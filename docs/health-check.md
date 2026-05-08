# 健康检查模块文档

## 概述

健康检查模块为诗歌分析应用提供了全面的服务状态监控能力，参考 Spring Boot Actuator 风格设计，支持查看服务运行状态、系统资源使用情况、数据库连接状态等关键指标。

## 功能特性

- **综合健康检查**: 一键查看服务整体健康状态
- **服务状态**: 快速确认服务是否正常运行
- **详细信息**: 进程ID、CPU使用率、内存使用、线程数量等运行时指标
- **数据库监控**: 检测数据库连接可用性
- **磁盘监控**: 检查磁盘空间使用情况，低空间预警
- **运行时间**: 查看服务已运行时长
- **内存详情**: JVM堆内存和非堆内存详细数据
- **线程详情**: JVM线程数量和峰值线程数
- **环境信息**: Java版本、操作系统、Spring版本等环境参数

## API 接口列表

| 接口 | 方法 | 路径 | 说明 |
|------|------|------|------|
| 综合健康检查 | GET | `/api/health` | 返回服务、数据库、磁盘整体状态 |
| 服务状态 | GET | `/api/health/status` | 简单服务运行状态 |
| 服务详细信息 | GET | `/api/health/info` | 进程ID、CPU、内存、线程等 |
| 数据库健康检查 | GET | `/api/health/db` | 数据库连接状态 |
| 磁盘空间检查 | GET | `/api/health/disk` | 磁盘空间使用情况 |
| 运行时间 | GET | `/api/health/uptime` | 服务已运行时间 |
| 内存使用 | GET | `/api/health/memory` | JVM内存详细数据 |
| 线程信息 | GET | `/api/health/threads` | JVM线程统计 |
| 环境信息 | GET | `/api/health/env` | 运行环境参数 |

## 核心代码

### HealthController

位于 `src/main/java/com/fpj/poetry/controller/HealthController.java`

主要功能:
- 使用 `java.lang.management` API 获取 JVM 运行时指标
- 通过 `ManagementFactory` 获取 MemoryMXBean、ThreadMXBean、RuntimeMXBean
- 检测数据库连接状态
- 检查磁盘空间并设置低空间预警阈值

### DTO 对象

- **HealthInfoDto**: 服务详细信息数据传输对象
- **HealthCheckResult**: 健康检查结果对象

## 测试

### HTTP 测试

HTTP 测试文件位于 `http/health.http`，可使用 IntelliJ IDEA HTTP Client 执行。

### JUnit 测试

测试类位于 `src/test/java/com/fpj/poetry/controller/HealthControllerTest.java`

使用 `MockMvc` 对所有健康检查接口进行单元测试，验证:
- HTTP 状态码 200
- JSON 响应格式正确
- 关键字段存在且值符合预期

### cURL 脚本

服务器端可执行脚本位于 `curl/health.sh`，支持在 Linux/Unix 服务器上直接运行:

```bash
chmod +x curl/health.sh
./curl/health.sh
```

## 参考标准

本模块参考以下主流健康检查标准设计:

- **Spring Boot Actuator**: `/actuator/health` 接口风格
- **Kubernetes Liveness/Readiness Probes**: UP/DOWN 状态模型
- **Prometheus**: 指标暴露风格（可扩展）

## 扩展建议

1. 可集成 Micrometer + Prometheus 实现指标采集
2. 可增加自定义健康指示器（如 Redis、Elasticsearch 连接检查）
3. 可增加告警通知机制（邮件、钉钉、企业微信）
