#!/bin/bash
# Poetry Category API - curl commands for server execution
# Usage: chmod +x poetry-category.sh && ./poetry-category.sh

SERVER="http://127.0.0.1:8866"

echo "=== 获取所有分类 ==="
curl -s "${SERVER}/api/poetry/categories" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/poetry/categories"
echo ""

echo "=== 获取分类统计 ==="
curl -s "${SERVER}/api/poetry/categories/stats" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/poetry/categories/stats"
echo ""

echo "=== 根据code获取分类 ==="
curl -s "${SERVER}/api/poetry/categories/tang" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/poetry/categories/tang"
echo ""

echo "=== 创建分类 ==="
curl -s -X POST "${SERVER}/api/poetry/categories" \
  -H "Content-Type: application/json" \
  -d '{"name":"%E6%B5%8B%E8%AF%95%E5%88%86%E7%B1%BB","code":"test","description":"%E6%B5%8B%E8%AF%95%E7%94%A8%E5%88%86%E7%B1%BB"}' | python3 -m json.tool 2>/dev/null || curl -s -X POST "${SERVER}/api/poetry/categories" -H "Content-Type: application/json" -d '{"name":"%E6%B5%8B%E8%AF%95%E5%88%86%E7%B1%BB","code":"test","description":"%E6%B5%8B%E8%AF%95%E7%94%A8%E5%88%86%E7%B1%BB"}'
echo ""

echo "=== 更新分类 ==="
curl -s -X PUT "${SERVER}/api/poetry/categories" \
  -H "Content-Type: application/json" \
  -d '{"id":1,"name":"%E6%B5%8B%E8%AF%95%E5%88%86%E7%B1%BB-%E6%9B%B4%E6%96%B0","code":"test","description":"%E6%B5%8B%E8%AF%95%E7%94%A8%E5%88%86%E7%B1%BB-%E6%9B%B4%E6%96%B0"}' | python3 -m json.tool 2>/dev/null || curl -s -X PUT "${SERVER}/api/poetry/categories" -H "Content-Type: application/json" -d '{"id":1,"name":"%E6%B5%8B%E8%AF%95%E5%88%86%E7%B1%BB-%E6%9B%B4%E6%96%B0","code":"test","description":"%E6%B5%8B%E8%AF%95%E7%94%A8%E5%88%86%E7%B1%BB-%E6%9B%B4%E6%96%B0"}'
echo ""

echo "=== 删除分类 ==="
curl -s -X DELETE "${SERVER}/api/poetry/categories/1" | python3 -m json.tool 2>/dev/null || curl -s -X DELETE "${SERVER}/api/poetry/categories/1"
echo ""
