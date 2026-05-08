#!/bin/bash
# Poetry API - curl commands for server execution
# Usage: chmod +x poetry.sh && ./poetry.sh

SERVER="http://127.0.0.1:8866"

echo "=== 获取诗词列表 ==="
curl -s "${SERVER}/api/poetry/list?page=1&size=10" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/poetry/list?page=1&size=10"
echo ""

echo "=== 获取诗词列表-按分类 ==="
curl -s "${SERVER}/api/poetry/list?categoryId=1&page=1&size=10" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/poetry/list?categoryId=1&page=1&size=10"
echo ""

echo "=== 获取诗词详情 ==="
curl -s "${SERVER}/api/poetry/1" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/poetry/1"
echo ""

echo "=== 获取精选诗词 ==="
curl -s "${SERVER}/api/poetry/featured?page=1&size=12" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/poetry/featured?page=1&size=12"
echo ""

echo "=== 搜索诗词 ==="
curl -s "${SERVER}/api/poetry/search?keyword=%E9%9D%99%E5%A4%9C%E6%80%9D&page=1&size=10" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/poetry/search?keyword=%E9%9D%99%E5%A4%9C%E6%80%9D&page=1&size=10"
echo ""

echo "=== 创建诗词 ==="
curl -s -X POST "${SERVER}/api/poetry" \
  -H "Content-Type: application/json" \
  -d '{"title":"%E6%B5%8B%E8%AF%95%E8%AF%97%E8%AF%8D","author":"%E6%B5%8B%E8%AF%95%E4%BD%9C%E8%80%85","dynasty":"%E5%94%90%E4%BB%A3","content":"%E5%BA%8A%E5%89%8D%E6%98%8E%E6%9C%88%E5%85%89%EF%BC%8C%E7%96%91%E6%98%AF%E5%9C%B0%E4%B8%8A%E9%9C%9C%E3%80%82","categoryId":1,"featured":true}' | python3 -m json.tool 2>/dev/null || curl -s -X POST "${SERVER}/api/poetry" -H "Content-Type: application/json" -d '{"title":"%E6%B5%8B%E8%AF%95%E8%AF%97%E8%AF%8D","author":"%E6%B5%8B%E8%AF%95%E4%BD%9C%E8%80%85","dynasty":"%E5%94%90%E4%BB%A3","content":"%E5%BA%8A%E5%89%8D%E6%98%8E%E6%9C%88%E5%85%89%EF%BC%8C%E7%96%91%E6%98%AF%E5%9C%B0%E4%B8%8A%E9%9C%9C%E3%80%82","categoryId":1,"featured":true}'
echo ""

echo "=== 更新诗词 ==="
curl -s -X PUT "${SERVER}/api/poetry" \
  -H "Content-Type: application/json" \
  -d '{"id":1,"title":"%E9%9D%99%E5%A4%9C%E6%80%9D-%E6%9B%B4%E6%96%B0","author":"%E6%9D%8E%E7%99%BD","dynasty":"%E5%94%90%E4%BB%A3","content":"%E5%BA%8A%E5%89%8D%E6%98%8E%E6%9C%88%E5%85%89%EF%BC%8C%E7%96%91%E6%98%AF%E5%9C%B0%E4%B8%8A%E9%9C%9C%E3%80%82%E4%B8%BE%E5%A4%B4%E6%9C%9B%E6%98%8E%E6%9C%88%EF%BC%8C%E4%BD%8E%E5%A4%B4%E6%80%9D%E6%95%85%E4%B9%A1%E3%80%82"}' | python3 -m json.tool 2>/dev/null || curl -s -X PUT "${SERVER}/api/poetry" -H "Content-Type: application/json" -d '{"id":1,"title":"%E9%9D%99%E5%A4%9C%E6%80%9D-%E6%9B%B4%E6%96%B0","author":"%E6%9D%8E%E7%99%BD","dynasty":"%E5%94%90%E4%BB%A3","content":"%E5%BA%8A%E5%89%8D%E6%98%8E%E6%9C%88%E5%85%89%EF%BC%8C%E7%96%91%E6%98%AF%E5%9C%B0%E4%B8%8A%E9%9C%9C%E3%80%82%E4%B8%BE%E5%A4%B4%E6%9C%9B%E6%98%8E%E6%9C%88%EF%BC%8C%E4%BD%8E%E5%A4%B4%E6%80%9D%E6%95%85%E4%B9%A1%E3%80%82"}'
echo ""

echo "=== 删除诗词 ==="
curl -s -X DELETE "${SERVER}/api/poetry/1" | python3 -m json.tool 2>/dev/null || curl -s -X DELETE "${SERVER}/api/poetry/1"
echo ""
