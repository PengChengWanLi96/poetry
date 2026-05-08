# Poetry - 古诗词赏析平台

> 基于 Spring Boot 3.x 构建的诗词管理与 AI 赏析应用，集成多模态 AI 能力，提供诗词检索、智能分析、天气查询等功能。

## 功能特性

- **诗词管理** - 诗词的增删改查、分类管理、精选推荐、全文检索
- **AI 诗词赏析** - 集成 OpenAI、百度文心一言、阿里通义千问、讯飞星火，自动/手动生成诗词赏析
- **天气服务** - 支持坐标/城市名查询当前天气与天气预报
- **健康监控** - 服务状态、JVM 内存/线程/CPU、数据库、磁盘等多维度健康检查
- **RESTful API** - 完整的 REST 接口，自动生成 OpenAPI / Knife4j 在线文档

## 技术栈

| 层级 | 技术 |
|------|------|
| 基础框架 | Spring Boot 3.5.3 + Java 17 |
| 数据访问 | MyBatis-Plus 3.5.7 + MySQL 8.0 |
| 搜索引擎 | Elasticsearch (Spring Data Elasticsearch) |
| AI 集成 | OpenAI SDK、百度 AIP、阿里通义千问 HTTP、讯飞星火 |
| 接口文档 | SpringDoc OpenAPI 2.7.0 + Knife4j 4.5.0 |
| 工具库 | Hutool 5.8.32、Gson、OkHttp |
| 构建工具 | Maven |

## 快速开始

### 环境要求

- JDK 17+
- Maven 3.8+
- MySQL 8.0+
- Elasticsearch 8.x（可选）

### 运行步骤

```bash
# 1. 克隆项目
git clone <repo-url>
cd poetry

# 2. 配置数据库
# 修改 src/main/resources/application.properties 中的数据库连接信息

# 3. 编译打包
mvn clean package -DskipTests

# 4. 启动应用
java -jar target/poetry.jar

# 或使用 Maven 直接运行
mvn spring-boot:run
```

应用默认运行在 `http://localhost:8866`

### 访问文档

- Swagger UI: http://localhost:8866/swagger-ui.html
- Knife4j: http://localhost:8866/doc.html
- OpenAPI JSON: http://localhost:8866/v3/api-docs

## 项目结构

```
poetry/
├── src/main/java/com/fpj/poetry/
│   ├── controller/       # REST 控制器（诗词、分类、AI分析、天气、健康检查）
│   ├── service/          # 业务逻辑层
│   ├── repository/       # 数据访问层
│   ├── domain/           # 实体类
│   ├── dto/              # 数据传输对象
│   ├── config/           # 配置类
│   └── util/             # 工具类
├── src/main/resources/
│   ├── application.properties
│   ├── static/           # 静态页面
│   └── sql/              # 数据库初始化脚本
├── src/test/java/        # 单元测试
├── http/                 # IDEA HTTP Client 测试脚本
├── curl/                 # 服务器端 curl 测试脚本
└── docs/                 # 项目文档
```

## 主要模块

| 模块 | 端点 | 说明 |
|------|------|------|
| 诗词管理 | `/api/poetry/**` | 诗词 CRUD、搜索、精选 |
| 分类管理 | `/api/poetry/categories/**` | 诗词分类 CRUD |
| AI 赏析 | `/api/poetry/analysis/**` | AI 生成诗词赏析 |
| 天气查询 | `/api/weather/**` | 当前天气、天气预报 |
| 健康检查 | `/api/health/**` | 服务/数据库/磁盘/内存/线程监控 |

## 部署

```bash
# 打包
mvn clean package -DskipTests

# 启动（生产环境建议外置配置）
java -jar target/poetry.jar --spring.profiles.active=prod
```

## 测试

```bash
# 运行所有测试
mvn test

# 运行单个测试类
mvn -Dtest=HealthControllerTest test
```

## 相关文档

- [健康检查模块说明](docs/health-check.md)
- [API 测试脚本](http/)
- [服务器 curl 脚本](curl/)

## 许可证

[MIT](LICENSE)
