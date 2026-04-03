# 诗歌项目智能体指南

## 项目概述
这是一个使用Spring Boot 3.x构建的诗歌分析应用，集成了AI功能。项目使用Java 17，Maven作为构建工具，遵循标准的Spring Boot约定。

## 构建命令

### Maven命令
- **编译**：`mvn compile`
- **打包**：`mvn clean package`
- **安装**：`mvn clean install`
- **跳过测试**：在任何maven命令中添加 `-DskipTests`
- **运行应用**：`mvn spring-boot:run`
- **从JAR运行**：`java -jar target/poetry-0.0.1-SNAPSHOT.jar`

### 开发命令
- **热重载**：`mvn spring-boot:run`（支持Spring Boot DevTools的隐式热重载）
- **清理构建**：`mvn clean install`

## 测试命令

### 运行测试
- **所有测试**：`mvn test`
- **单个测试类**：`mvn -Dtest=PoetryApplicationTests test`
- **单个测试方法**：`mvn -Dtest=PoetryApplicationTests#contextLoads test`
- **使用特定配置文件测试**：`mvn test -Dspring.profiles.active=test`
- **跳过测试**：`mvn install -DskipTests`

### 测试框架
- **JUnit 5**（如PoetryApplicationTests.java所示）
- **Spring Boot Test**注解
- **AssertJ**（随Spring Boot Test包含）

## 代码风格指南

### Java版本
- **目标版本**：Java 17
- **源码版本**：Java 17
- 使用现代Java特性（记录、switch表达式、文本块等）

### 导入
- **顺序**：
  1. Java标准库 (`java.*`)
  2. Jakarta EE (`jakarta.*`)
  3. Spring Framework (`org.springframework.*`)
  4. 第三方库（按字母顺序）
  5. 项目特定 (`com.fpj.poetry.*`)
- **静态导入**：在常规导入之后单独分组
- **通配符导入**：避免使用；使用显式导入
- **未使用的导入**：定期删除

### 格式化
- **缩进**：4个空格（不是制表符）
- **行长度**：最大120个字符
- **大括号**：
  - 开括号与语句在同一行
  - 闭括号独占一行
  - 例如：`if (condition) {` 然后在新行开始主体
- **空格**：
  - 逗号、for循环中的分号后有空格
  - 运算符前后有空格 (`=`, `==`, `+`, `-` 等)
  - 分号前没有空格
  - 强制类型转换后有空格：`((String) object)`
- **空行**：
  - 方法之间
  - 方法内部逻辑部分之间
  - 返回语句前（可选）
  - 文件末尾有一个空行

### 命名约定
- **类**：PascalCase（例如 `PoetryAnalysisController`）
- **接口**：PascalCase（例如 `PoetryRepository`）
- **方法**：camelCase（例如 `getPoetryById`）
- **变量**：camelCase（例如 `poetryService`）
- **常量**：UPPER_SNAKE_CASE（例如 `MAX_RESULTS`）
- **包**：全小写（例如 `com.fpj.poetry.controller`）
- **枚举**：PascalCase，常量使用UPPER_SNAKE_CASE
- **注解**：PascalCase（与类相同）

### 类型使用
- **基本类型**：优先使用基本类型而不是包装类型作为局部变量（`int` vs `Integer`）
- **集合**：使用接口类型（`List<String>` 而不是 `ArrayList<String>`）
- **字符串**：使用Spring/Hutool中的`StringUtils`进行空值安全操作
- **数字**：使用`BigDecimal`进行货币计算
- **日期**：使用`java.time`包（`LocalDateTime`, `Instant`）而不是遗留的`Date`/`Calendar`

### 错误处理
- **异常**：
  - 对可恢复条件使用受检异常
  - 对编程错误使用未受检异常（`RuntimeException`）
  - 创建自定义异常类型（继承`RuntimeException`或`Exception`）
- **日志**：
  - 使用SLF4J配合Lombok的`@Slf4j`注解
  - 日志记录器名称：`private static final Logger log = LoggerFactory.getLogger(ClassName.class);`
  - 日志级别：
    - `ERROR`: 需要关注的系统错误
    - `WARN`: 潜在问题
    - `INFO`: 一般信息
    - `DEBUG`: 开发/调试信息
    - `TRACE`: 详细跟踪
- **REST API错误**：
  - 使用`@ControllerAdvice`进行全局异常处理
  - 返回适当的HTTP状态码
  - 在响应体中包含错误消息（避免暴露内部细节）

### Lombok使用
- **getter/setter**：在字段或类级别使用`@Getter`/`@Setter`
- **构造函数**：使用`@NoArgsConstructor`、`@RequiredArgsConstructor`、`@AllArgsConstructor`
- **数据类**：使用`@Data`（包含getter、setter、equals、hashCode、toString）
- **建造者模式**：使用`@Builder`
- **日志**：使用`@Slf4j`自动注入日志记录器
- **equals/hashCode**：在需要时使用`@EqualsAndHashCode`
- **toString**：在需要时使用`@ToString`

### Spring特定指南
- **控制器**：
  - 使用`@RestController`或`@Controller`注解
  - 在类级别使用`@RequestMapping`定义基本路径
  - 使用HTTP动词注解（`@GetMapping`、`@PostMapping`等）
  - 返回`ResponseEntity`以获得完全控制权，或返回域对象以实现自动JSON转换
- **服务**：
  - 使用`@Service`注解
  - 将业务逻辑保持在此处，而不是在控制器中
  - 在需要时使用`@Transactional`
- **仓储**：
  - 扩展Spring Data仓储（`JpaRepository`、`MongoRepository`）或MyBatis-Plus
  - 使用`@Repository`注解
- **配置**：
  - 使用`@Configuration`类
  - 使用`@Bean`定义bean
  - 使用`@ConfigurationProperties`进行外部化配置
- **切面**：
  - 使用`@Aspect`和`@Component`
  - 切入点应具体且可重用

### 验证
- **Bean验证**：使用Jakarta验证注解（`@NotNull`、`@Size`、`@Pattern`等）
- **分组验证**：在不同的上下文需要不同验证时使用分组
- **自定义约束**：当内置注解不足时创建
- **控制器验证**：在方法参数上使用`@Valid`或`@Validated`

### 安全
- **依赖扫描**：定期检查依赖中的漏洞
- **输入验证**：验证所有外部输入
- **输出编码**：在渲染用户数据时编码输出
- **机密信息**：不要硬编码机密；使用环境变量或配置服务器

### 性能考虑
- **数据库**：
  - 对大结果集使用分页（`Pageable`）
  - 避免N+1查询（使用获取连接或实体图）
  - 使用适当的索引
- **缓存**：
  - 当有益时使用Spring缓存抽象
  - 选择合适的缓存实现
- **并发**：
  - 在需要时使用线程安全的集合
  - 考虑使用`@Async`进行异步处理
  - 在异步方法中避免阻塞操作

## 文档
- **Javadoc**：
  - 公共类和方法应有Javadoc注释
  - 包含@param、@return、@throws标签
  - 使用`{@code}`进行内联代码引用
- **注释**：
  - 解释原因而不是说明做了什么
  - 删除注释掉的代码
  - 使用带有票据/问题的TODO注释
- **API文档**：
  - SpringDoc OpenAPI自动生成API文档
  - 使用`@Operation`、`@Parameter`、`@Schema`注解进行增强

## 文件参考
- **pom.xml**：依赖项和构建配置
- **src/main/java/**：主要应用代码
- **src/test/java/**：测试代码
- **.gitignore**：要排除的版本控制文件

## 代码质量和检查
虽然pom.xml中未配置特定的检查工具，但可以考虑：
- **SpotBugs**或**SonarQube**进行静态分析
- **Checkstyle**进行格式强制执行
- **PMD**进行代码质量规则
- **Dependency-Check**进行漏洞扫描

## 此代码库中的常见模式
- **DTO模式**：将领域实体与API合约分离
- **服务层**：将业务逻辑隔离在@Service类中
- **仓储模式**：数据访问抽象
- **面向切面编程**：日志和计时切面
- **配置类**：类型安全的配置属性