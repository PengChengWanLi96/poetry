# AI诗词分析配置说明

本文档说明如何配置AI诗词分析功能，支持多种主流大模型。

## 一、数据库初始化

在启用AI分析功能前，请先执行SQL脚本创建数据表：

```bash
# 执行SQL脚本
mysql -u root -p poetry < src/main/resources/sql/schema.sql
```

## 二、配置文件说明

在 `application.properties` 或 `application.yml` 中添加以下配置：

### application.properties 配置示例

```properties
# ==================== AI诗词分析配置 ====================

# 是否启用AI功能（默认true）
poetry.ai.enabled=true

# 默认使用的AI模型
# 可选值：openai, wenxin(百度文心), qianwen(阿里通义), xinghuo(讯飞星火)
poetry.ai.default-model=openai

# -------------------- OpenAI配置 --------------------
# API密钥（必填）
poetry.ai.models.openai.api-key=your-openai-api-key
# 基础URL（可选，用于代理或第三方兼容服务）
poetry.ai.models.openai.base-url=https://api.openai.com
# 模型名称（可选，默认gpt-3.5-turbo）
poetry.ai.models.openai.model=gpt-4
# 超时时间（秒，默认60）
poetry.ai.models.openai.timeout=60
# 温度参数（0-2，默认0.7）
poetry.ai.models.openai.temperature=0.7
# 最大token数（默认2000）
poetry.ai.models.openai.max-tokens=2000
# 是否启用（默认true）
poetry.ai.models.openai.enabled=true

# -------------------- 百度文心一言配置 --------------------
# API Key（必填）
poetry.ai.models.wenxin.api-key=your-wenxin-api-key
# Secret Key（必填）
poetry.ai.models.wenxin.api-secret=your-wenxin-secret-key
# 模型名称（可选，默认ERNIE-Bot-4）
poetry.ai.models.wenxin.model=ERNIE-Bot-4
# 超时时间（秒，默认60）
poetry.ai.models.wenxin.timeout=60
# 温度参数（默认0.7）
poetry.ai.models.wenxin.temperature=0.7
# 最大token数（默认2000）
poetry.ai.models.wenxin.max-tokens=2000
# 是否启用（默认true）
poetry.ai.models.wenxin.enabled=true

# -------------------- 阿里通义千问配置 --------------------
# API Key（必填，从阿里云DashScope获取）
poetry.ai.models.qianwen.api-key=your-qianwen-api-key
# 模型名称（可选，默认qwen-turbo）
poetry.ai.models.qianwen.model=qwen-turbo
# 超时时间（秒，默认60）
poetry.ai.models.qianwen.timeout=60
# 温度参数（默认0.7）
poetry.ai.models.qianwen.temperature=0.7
# 最大token数（默认2000）
poetry.ai.models.qianwen.max-tokens=2000
# 是否启用（默认true）
poetry.ai.models.qianwen.enabled=true

# -------------------- 讯飞星火配置 --------------------
# App ID（必填）
poetry.ai.models.xinghuo.extra.appId=your-xinghuo-app-id
# API Key（必填）
poetry.ai.models.xinghuo.api-key=your-xinghuo-api-key
# API Secret（必填）
poetry.ai.models.xinghuo.api-secret=your-xinghuo-api-secret
# 服务URL（可选，默认使用v3.5版本）
poetry.ai.models.xinghuo.base-url=https://spark-api.xf-yun.com/v3.5/chat
# 模型名称（可选，默认generalv3.5）
poetry.ai.models.xinghuo.model=generalv3.5
# 超时时间（秒，默认60）
poetry.ai.models.xinghuo.timeout=60
# 温度参数（默认0.7）
poetry.ai.models.xinghuo.temperature=0.7
# 最大token数（默认2000）
poetry.ai.models.xinghuo.max-tokens=2000
# 是否启用（默认true）
poetry.ai.models.xinghuo.enabled=true
```

### application.yml 配置示例

```yaml
poetry:
  ai:
    enabled: true
    default-model: openai
    models:
      openai:
        api-key: your-openai-api-key
        base-url: https://api.openai.com
        model: gpt-4
        timeout: 60
        temperature: 0.7
        max-tokens: 2000
        enabled: true
      wenxin:
        api-key: your-wenxin-api-key
        api-secret: your-wenxin-secret-key
        model: ERNIE-Bot-4
        timeout: 60
        temperature: 0.7
        max-tokens: 2000
        enabled: true
      qianwen:
        api-key: your-qianwen-api-key
        model: qwen-turbo
        timeout: 60
        temperature: 0.7
        max-tokens: 2000
        enabled: true
      xinghuo:
        api-key: your-xinghuo-api-key
        api-secret: your-xinghuo-api-secret
        base-url: https://spark-api.xf-yun.com/v3.5/chat
        model: generalv3.5
        timeout: 60
        temperature: 0.7
        max-tokens: 2000
        enabled: true
        extra:
          appId: your-xinghuo-app-id
```

## 三、各平台API申请指南

### 1. OpenAI
- 官网：https://platform.openai.com
- 申请步骤：
  1. 注册OpenAI账号
  2. 进入API Keys页面创建API Key
  3. 配置付费方式（需要绑定信用卡）
- 国内访问：需要使用代理或第三方中转服务

### 2. 百度文心一言
- 官网：https://console.bce.baidu.com/qianfan/ais/console/applicationConsole/application
- 申请步骤：
  1. 注册百度智能云账号
  2. 进入千帆大模型平台
  3. 创建应用获取API Key和Secret Key
  4. 开通相应模型的服务权限

### 3. 阿里通义千问
- 官网：https://dashscope.aliyun.com
- 申请步骤：
  1. 登录阿里云账号
  2. 进入DashScope控制台
  3. 创建API-KEY
  4. 开通模型服务

### 4. 讯飞星火
- 官网：https://console.xfyun.cn/services/bm35
- 申请步骤：
  1. 注册讯飞开放平台账号
  2. 创建应用
  3. 获取App ID、API Key、API Secret
  4. 开通星火大模型V3.5服务

## 四、API接口说明

### 获取诗词AI分析
```
GET /api/poetry/analysis/{poetryId}
```

### 检查分析是否存在
```
GET /api/poetry/analysis/{poetryId}/exists
```

### 生成诗词分析
```
POST /api/poetry/analysis/{poetryId}?model={modelName}
```
- model参数可选，不指定则使用默认模型

### 重新生成诗词分析
```
POST /api/poetry/analysis/{poetryId}/regenerate?model={modelName}
```

### 删除诗词分析
```
DELETE /api/poetry/analysis/{poetryId}
```

### 获取可用模型列表
```
GET /api/poetry/analysis/models
```

## 五、数据表结构

### poetry_analysis 表

| 字段名 | 类型 | 说明 |
|--------|------|------|
| id | bigint | 主键ID |
| poetry_id | bigint | 诗词ID |
| dynasty_analysis | text | 朝代背景分析 |
| author_analysis | text | 作者背景分析 |
| background_analysis | text | 创作背景分析 |
| content_analysis | text | 诗词大意分析 |
| artistic_analysis | text | 艺术手法分析 |
| full_analysis | text | 完整JSON内容 |
| ai_model | varchar(50) | 使用的AI模型 |
| ai_version | varchar(50) | 模型版本 |
| generate_time | int | 生成耗时(毫秒) |
| status | tinyint | 状态：0-生成中, 1-完成, 2-失败 |
| error_msg | varchar(500) | 错误信息 |
| created_at | datetime | 创建时间 |
| updated_at | datetime | 更新时间 |

## 六、使用说明

1. **首次使用**：点击"生成赏析"按钮，AI将自动分析并保存结果
2. **查看结果**：已有分析记录的诗词会直接进入详情页就能看到分析内容
3. **重新生成**：点击"重新生成"按钮可以更新分析内容
4. **模型选择**：可在下拉框中选择不同的AI模型进行对比

## 七、注意事项

1. API Key请妥善保管，不要提交到代码仓库
2. 建议使用环境变量或配置文件外部化管理敏感信息
3. 不同模型的分析风格和侧重点可能有所不同
4. 生成过程可能需要10-30秒，请耐心等待
5. 如遇到生成失败，可查看日志定位问题

## 八、扩展其他模型

如需添加新的AI模型支持：

1. 创建新的ServiceProvider实现 `AiServiceProvider` 接口
2. 在 `AiServiceFactory` 中自动注册
3. 在配置文件中添加对应配置项

具体实现可参考现有的 `OpenAiServiceProvider`、`WenxinServiceProvider` 等类。