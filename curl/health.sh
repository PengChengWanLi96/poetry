#!/bin/bash
# Health Check API - curl commands for server execution
# Usage: chmod +x health.sh && ./health.sh

SERVER="http://127.0.0.1:8866"

echo "=== 综合健康检查 ==="
curl -s "${SERVER}/api/health" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/health"
echo ""

echo "=== 服务状态 ==="
curl -s "${SERVER}/api/health/status" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/health/status"
echo ""

echo "=== 服务详细信息 ==="
curl -s "${SERVER}/api/health/info" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/health/info"
echo ""

echo "=== 数据库健康检查 ==="
curl -s "${SERVER}/api/health/db" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/health/db"
echo ""

echo "=== 磁盘空间健康检查 ==="
curl -s "${SERVER}/api/health/disk" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/health/disk"
echo ""

echo "=== 运行时间 ==="
curl -s "${SERVER}/api/health/uptime" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/health/uptime"
echo ""

echo "=== 内存使用情况 ==="
curl -s "${SERVER}/api/health/memory" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/health/memory"
echo ""

echo "=== 线程信息 ==="
curl -s "${SERVER}/api/health/threads" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/health/threads"
echo ""

echo "=== 环境信息 ==="
curl -s "${SERVER}/api/health/env" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/health/env"
echo ""
