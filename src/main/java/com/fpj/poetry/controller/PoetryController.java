package com.fpj.poetry.controller;

import com.fpj.poetry.annotation.AuditLog;
import com.fpj.poetry.annotation.TimeCost;
import com.fpj.poetry.common.PageResult;
import com.fpj.poetry.common.Result;
import com.fpj.poetry.domain.Poetry;
import com.fpj.poetry.service.PoetryService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import java.util.concurrent.TimeUnit;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/poetry")
@Tag(name = "诗词管理", description = "诗词相关接口")
public class PoetryController {

    private static final Logger log = LoggerFactory.getLogger(PoetryController.class);

    @Autowired
    private PoetryService poetryService;

    @TimeCost(value = "获取诗词列表", unit = TimeUnit.MILLISECONDS)
    @GetMapping("/list")
    @Operation(summary = "获取诗词列表")
    public Result<PageResult<Poetry>> getPoetryList(
            @RequestParam(required = false) Long categoryId,
            @RequestParam(required = false) String keyword,
            @RequestParam(defaultValue = "1") Integer page,
            @RequestParam(defaultValue = "10") Integer size) {
        log.info("获取诗词列表请求参数: categoryId={}, keyword={}, page={}, size={}", categoryId, keyword, page, size);
        PageResult<Poetry> poetryList = poetryService.getPoetryList(categoryId, keyword, page, size);
        log.info("获取诗词列表返回数据: total={}, records={}", poetryList.getTotal(), poetryList.getRecords().size());
        return Result.success(poetryList);
    }

    @TimeCost(value = "获取诗词详情", unit = TimeUnit.MILLISECONDS)
    @GetMapping("/{id}")
    @Operation(summary = "获取诗词详情")
    public Result<Poetry> getPoetryById(@PathVariable Long id) {
        log.info("获取诗词详情请求参数: id={}", id);
        Poetry poetry = poetryService.getPoetryById(id);
        log.info("获取诗词详情返回数据: {}", poetry);
        return Result.success(poetry);
    }

    @TimeCost(value = "获取精选诗词", unit = TimeUnit.MILLISECONDS)
    @GetMapping("/featured")
    @Operation(summary = "获取精选诗词")
    public Result<PageResult<Poetry>> getFeaturedPoetry(
            @RequestParam(defaultValue = "1") Integer page,
            @RequestParam(defaultValue = "10") Integer size) {
        log.info("获取精选诗词请求参数: page={}, size={}", page, size);
        PageResult<Poetry> featuredPoetry = poetryService.getFeaturedPoetry(page, size);
        log.info("获取精选诗词返回数据: total={}, records={}", featuredPoetry.getTotal(), featuredPoetry.getRecords().size());
        return Result.success(featuredPoetry);
    }

    @TimeCost(value = "搜索诗词", unit = TimeUnit.MILLISECONDS)
    @GetMapping("/search")
    @Operation(summary = "搜索诗词")
    public Result<PageResult<Poetry>> searchPoetry(
            @RequestParam String keyword,
            @RequestParam(defaultValue = "1") Integer page,
            @RequestParam(defaultValue = "10") Integer size) {
        log.info("搜索诗词请求参数: keyword={}, page={}, size={}", keyword, page, size);
        PageResult<Poetry> poetryPageResult = poetryService.searchPoetry(keyword, page, size);
        log.info("搜索诗词返回数据: total={}, records={}", poetryPageResult.getTotal(), poetryPageResult.getRecords().size());
        return Result.success(poetryPageResult);
    }

    @TimeCost(value = "创建诗词", unit = TimeUnit.MILLISECONDS)
    @PostMapping
    @AuditLog("创建诗词")
    @Operation(summary = "创建诗词")
    public Result<Void> createPoetry(@RequestBody Poetry poetry) {
        log.info("创建诗词请求参数: {}", poetry);
        poetryService.save(poetry);
        return Result.success();
    }

    @TimeCost(value = "更新诗词", unit = TimeUnit.MILLISECONDS)
    @PutMapping
    @AuditLog("更新诗词")
    @Operation(summary = "更新诗词")
    public Result<Void> updatePoetry(@RequestBody Poetry poetry) {
        log.info("更新诗词请求参数: {}", poetry);
        poetryService.updateById(poetry);
        return Result.success();
    }

    @TimeCost(value = "删除诗词", unit = TimeUnit.MILLISECONDS)
    @DeleteMapping("/{id}")
    @AuditLog("删除诗词")
    @Operation(summary = "删除诗词")
    public Result<Void> deletePoetry(@PathVariable Long id) {
        log.info("删除诗词请求参数: id={}", id);
        poetryService.removeById(id);
        return Result.success();
    }
}
