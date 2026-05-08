#!/bin/bash
# Weather API - curl commands for server execution
# Usage: chmod +x weather.sh && ./weather.sh

SERVER="http://127.0.0.1:8866"

echo "=== 获取当前天气-默认（深圳） ==="
curl -s "${SERVER}/api/weather/current" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/weather/current"
echo ""

echo "=== 获取当前天气-按坐标（永寿） ==="
curl -s "${SERVER}/api/weather/current?lat=34.6833&lon=108.1500" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/weather/current?lat=34.6833&lon=108.1500"
echo ""

echo "=== 获取当前天气-按坐标（深圳） ==="
curl -s "${SERVER}/api/weather/current?lat=22.5431&lon=114.0579" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/weather/current?lat=22.5431&lon=114.0579"
echo ""

echo "=== 获取当前天气-按坐标（上海） ==="
curl -s "${SERVER}/api/weather/current?lat=31.2304&lon=121.4737" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/weather/current?lat=31.2304&lon=121.4737"
echo ""

echo "=== 获取当前天气-按城市名（上海） ==="
curl -s "${SERVER}/api/weather/current?city=%E4%B8%8A%E6%B5%B7" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/weather/current?city=%E4%B8%8A%E6%B5%B7"
echo ""

echo "=== 获取天气预报-按坐标（北京） ==="
curl -s "${SERVER}/api/weather/forecast?lat=39.9042&lon=116.4074" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/weather/forecast?lat=39.9042&lon=116.4074"
echo ""

echo "=== 获取天气预报-按城市名（北京） ==="
curl -s "${SERVER}/api/weather/forecast?city=%E5%8C%97%E4%BA%AC" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/weather/forecast?city=%E5%8C%97%E4%BA%AC"
echo ""

echo "=== 获取当前天气-按城市名（深圳） ==="
curl -s "${SERVER}/api/weather/current?city=%E6%B7%B1%E5%9C%B3" | python3 -m json.tool 2>/dev/null || curl -s "${SERVER}/api/weather/current?city=%E6%B7%B1%E5%9C%B3"
echo ""
