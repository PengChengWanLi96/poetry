# CLAUDE.md

本文件为 Claude Code (claude.ai/code) 操作本代码仓库提供指导。

## 项目概述

基于 Spring Boot 3.5.3 + Java 17 的古诗词管理与 AI 智能赏析应用。数据访问使用 MyBatis-Plus（非 JPA），MySQL 为主数据库，Elasticsearch 为可选。API 文档通过 SpringDoc OpenAPI + Knife4j 自动生成。

## 构建、运行与测试

所有命令均基于 Maven（可使用 `mvnw` 包装器）。

| 任务 | 命令 |
|------|---------|
| 编译 | `mvn compile` |
| 打包（跳过测试） | `mvn clean package -DskipTests` |
| 运行 | `mvn spring-boot:run` 或 `java -jar target/poetry.jar` |
| 运行全部测试 | `mvn test` |
| 运行单个测试类 | `mvn -Dtest=HealthControllerTest test` |
| 运行单个测试方法 | `mvn -Dtest=PoetryApplicationTests#contextLoads test` |

**测试重要提示：** 测试类使用 `@SpringBootTest`，会启动完整的 Spring 上下文。启动时会执行 `schema.sql`，因为配置中 `spring.sql.init.mode=always`。测试需要可用的 MySQL 实例。

默认端口：`8866`。API 文档地址：`http://localhost:8866/swagger-ui.html` 和 `http://localhost:8866/doc.html`。

## 高层架构

### 数据访问：MyBatis-Plus 逻辑删除

- **Mapper 扫描：** `PoetryApplication` 上标注 `@MapperScan("com.fpj.poetry.repository")`。
- **Repository：** 继承 `BaseMapper<T>`（例如 `PoetryRepository extends BaseMapper<Poetry>`）。不存在 XML Mapper；`mybatis-plus.mapper-locations` 已配置但对应目录为空。所有查询均通过 MyBatis-Plus 内置方法或 Lambda 条件构造器实现。
- **分页：** `MybatisPlusConfig` 注册了 MySQL 方言的 `PaginationInnerInterceptor`。
- **逻辑删除：** 全局配置 `logic-delete-value=1` / `logic-not-delete-value=0`。实体使用 `deletedAt`（Integer 类型，非布尔）作为删除标记。`ServiceImpl.removeById()` 执行逻辑删除，非物理删除。
- **实体模式：** `@Data` + MyBatis-Plus 注解（`@TableName`、`@TableId`、`@TableField(exist = false)` 用于非表字段的关联字段，如 `category` 和 `ext`）。

### AI 服务提供者模式

AI 集成采用提供者/工厂模式，便于在多个大模型后端之间切换：

- **`AiServiceProvider`** 接口（`service/ai/`）定义了 `analyzePoetry(Poetry)`、`getProviderName()`、`isAvailable()`、`getModelVersion()`。
- **`AiServiceFactory`** 是一个 Spring `@Component`，将所有 `AiServiceProvider` Bean 自动注入到以提供者名称为键的 `ConcurrentHashMap` 中。默认提供者由 `poetry.ai.default-model` 配置项解析。
- **实现类：** `OpenAiServiceProvider`、`WenxinServiceProvider`（百度）、`QianwenServiceProvider`（阿里云 DashScope HTTP）、`XinghuoServiceProvider`（讯飞）。
- **配置：** `AiConfig` 是一个 `@ConfigurationProperties(prefix = "poetry.ai")` Bean，内含嵌套的 `Map<String, ModelConfig>`。各提供者的密钥、模型名、超时时间在 `poetry.ai.models.<name>.*` 下配置。示例模板见 `application-ai-example.properties`。

### AOP 横切关注点

两个自定义注解驱动控制器层的 AOP 行为：

- **`@TimeCost`** — `TimeCostAspect` 测量方法执行时间，并按配置的 `TimeUnit` 记录日志。几乎所有控制器方法均应用此注解。
- **`@AuditLog`** — `LogAspect` 在方法进入、退出和异常时记录模块/操作信息。应用于变更操作（`createPoetry`、`updatePoetry`、`deletePoetry`）。

两个切面均使用注解切点上的 `@Around` 通知。

### 健康检查模块（自定义实现，非 Actuator）

健康检查为自定义实现（非 Spring Boot Actuator），位于 `HealthController`，接口路径为 `/api/health/**`：

- 使用 `java.lang.management` API（`ManagementFactory`、`MemoryMXBean`、`ThreadMXBean`、`RuntimeMXBean`）获取 JVM 指标。
- 检查数据库连通性和磁盘空间，并设置低空间告警阈值。
- 返回统一的 `Result<HealthCheckResult>` 或 `Result<HealthInfoDto>` 响应体。
- `HealthControllerTest` 使用 `MockMvc` 断言所有端点。这是本项目的主要测试参考。

### 版本与打包

- `git-commit-id-plugin` 在构建时生成 `git.properties`。`VersionConfig.printVersion()` 在启动时读取并打印分支、提交 ID、构建时间等信息。应用同时支持 `--version`、`--detail`、`--help` 命令行参数。
- `maven-assembly-plugin` 在可执行 JAR 之外额外产出 `target/poetry-v1.0.tar.gz`。压缩包包含 `bin/`（启停脚本）、`curl/`、`docs/`、`sql/`、`boot/poetry.jar` 和 `conf/`（提取出的配置文件）。
- `bin/start.sh` 通过 `--spring.config.location=file:${path}/conf/application.properties` 引用外部化配置，用于生产环境。

### 数据导入工具

`util/` 目录下的 `DataImportUtil`（注意不是 `utils/`）是一个独立的 `main()` 工具，从 `data/` 目录读取 JSON 诗词文件并生成 SQL INSERT 语句。其中包含硬编码的分类 ID 映射（`CATEGORY_MAP`）和朝代映射（`CATEGORY_DYNASTY`）。这是一次性迁移工具，不属于运行时应用的一部分。

### 数据库结构说明

- `schema.sql` 创建 `poetry` 数据库、三张主表（`poetry_category`、`poetry`、`poetry_ext`）、两个视图（`v_poetry_featured`、`v_category_stats`），以及用于存储 AI 生成分析结果的 `poetry_analysis` 表。
- `poetry` 存储通用字段；`poetry_ext` 存储分类特定字段，如 `chapter`、`section`、`prologue`。
- `poetry` 表在 `(title, author, content)` 上建有 `FULLTEXT` 全文索引，用于搜索。

### API 响应模式

所有 REST 控制器返回 `Result<T>`（code、message、data），通过静态工厂方法 `Result.success()` 和 `Result.error()` 构造。分页列表接口返回 `Result<PageResult<T>>`。
