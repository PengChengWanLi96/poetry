# 诗歌项目智能体指南

## 项目概述
基于 Spring Boot 3.5.3 + Java 17 的诗词管理与 AI 赏析应用。数据访问使用 MyBatis-Plus（非 JPA），MySQL 为主数据库，Elasticsearch 可选。

## 构建与运行

- **编译**: `mvn compile`
- **打包**: `mvn clean package -DskipTests` → 产出 `target/poetry.jar`
- **运行**: `mvn spring-boot:run` 或 `java -jar target/poetry.jar`
- **默认端口**: `8866`
- **API 文档**: http://localhost:8866/swagger-ui.html 与 http://localhost:8866/doc.html

## 测试

- **全部测试**: `mvn test`
- **单个类**: `mvn -Dtest=HealthControllerTest test`
- **单个方法**: `mvn -Dtest=PoetryApplicationTests#contextLoads test`
- **注意**: 测试类使用 `@SpringBootTest`，启动时会连接数据库并执行 `schema.sql`（`spring.sql.init.mode=always`），运行测试前需确保 MySQL 可访问。

## 架构与代码规范

### 数据访问
- **MyBatis-Plus**: 配置在 `MybatisPlusConfig.java`，已开启分页插件（MySQL 方言）。
- **Mapper 扫描**: `PoetryApplication` 上使用 `@MapperScan("com.fpj.poetry.repository")`。
- **实体类**: 使用 `@Data` + MyBatis-Plus 注解（`@TableName`、`@TableId`、`@TableField(exist = false)` 用于非表字段）。
- **逻辑删除**: 全局配置 `logic-delete-value=1` / `logic-not-delete-value=0`，实体中使用 `deletedAt` 字段。
- **当前无 XML Mapper**: `mybatis-plus.mapper-locations=classpath:/mapper/*.xml` 已配置，但目录为空，所有 SQL 通过 MyBatis-Plus 内置方法或注解实现。

### AI 集成
- 支持 OpenAI、百度文心一言、阿里通义千问、讯飞星火。
- AI 密钥配置在 `application-ai-example.properties` 中提供模板，实际密钥通过环境或独立 properties 注入。
- `poetry.ai.enabled` 和 `poetry.ai.default-model` 控制开关与默认模型。

### 日志与切面
- 使用 Lombok `@Slf4j`。
- `LogAspect` 和 `TimeCostAspect` 已配置，自动记录 controller 层入参、返回值和方法耗时。

### 常用目录
- `src/main/java/com/fpj/poetry/controller/` - REST 控制器
- `src/main/java/com/fpj/poetry/service/` - 业务逻辑
- `src/main/java/com/fpj/poetry/repository/` - MyBatis-Plus Mapper 接口
- `src/main/java/com/fpj/poetry/domain/` - 实体类（`@Data` + MyBatis-Plus 注解）
- `src/main/java/com/fpj/poetry/dto/` - DTO
- `src/main/resources/sql/` - 数据库初始化脚本（`schema.sql` 在启动时自动执行）
- `http/` - IDEA HTTP Client 测试脚本
- `curl/` - Shell 测试脚本
- `bin/` - 启动/停止脚本（`start.sh`、`stop.sh`），打包时通过 `maven-assembly-plugin` 纳入 `tar.gz`

### 打包产物
- `mvn clean package` 会同时生成：
  - `target/poetry.jar`（Spring Boot 可执行 JAR）
  - `target/poetry-v1.0.tar.gz`（包含 `bin/`、`curl/`、`docs/`、`sql/`、`boot/poetry.jar`、`conf/`）

### 版本信息
- `git-commit-id-plugin` 在构建时生成 `git.properties`，`VersionConfig` 在启动时读取并打印版本摘要。
