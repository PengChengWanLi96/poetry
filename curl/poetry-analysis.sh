#!/bin/bash
# Poetry Analysis API - curl commands for server execution
# Usage: chmod +x poetry-analysis.sh && ./poetry-analysis.sh

SERVER="http://127.0.0.1:8866"

echo "=== 检查AI诗词分析是否启用 ==="
curl -s "${SERVER}/api/poetry/analysis/check_enable" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/poetry/analysis/check_enable"
echo ""

echo "=== 获取诗词分析结果 ==="
curl -s "${SERVER}/api/poetry/analysis/1" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/poetry/analysis/1"
echo ""

echo "=== 检查诗词分析是否存在 ==="
curl -s "${SERVER}/api/poetry/analysis/1/exists" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/poetry/analysis/1/exists"
echo ""

echo "=== 生成诗词分析 ==="
curl -s -X POST "${SERVER}/api/poetry/analysis/1" | python3 -m json.tool 2>/dev/null || curl -s -X POST "${SERVER}/api/poetry/analysis/1"
echo ""

echo "=== 重新生成诗词分析 ==="
curl -s -X POST "${SERVER}/api/poetry/analysis/1/regenerate" | python3 -m json.tool 2>/dev/null || curl -s -X POST "${SERVER}/api/poetry/analysis/1/regenerate"
echo ""

echo "=== 删除诗词分析 ==="
curl -s -X DELETE "${SERVER}/api/poetry/analysis/1" | python3 -m json.tool 2>/dev/null || curl -s -X DELETE "${SERVER}/api/poetry/analysis/1"
echo ""
