package com.fpj.poetry.controller;

import com.fpj.poetry.annotation.AuditLog;
import com.fpj.poetry.common.PageResult;
import com.fpj.poetry.common.Result;
import com.fpj.poetry.domain.Poetry;
import com.fpj.poetry.service.PoetryService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/poetry")
@Tag(name = "诗词管理", description = "诗词相关接口")
public class PoetryController {

    @Autowired
    private PoetryService poetryService;

    @GetMapping("/list")
    @Operation(summary = "获取诗词列表")
    public Result<PageResult<Poetry>> getPoetryList(
            @RequestParam(required = false) Long categoryId,
            @RequestParam(required = false) String keyword,
            @RequestParam(defaultValue = "1") Integer page,
            @RequestParam(defaultValue = "10") Integer size) {
        PageResult<Poetry> poetryList = poetryService.getPoetryList(categoryId, keyword, page, size);
        return Result.success(poetryList);
    }

    @GetMapping("/{id}")
    @Operation(summary = "获取诗词详情")
    public Result<Poetry> getPoetryById(@PathVariable Long id) {
        return Result.success(poetryService.getPoetryById(id));
    }

    @GetMapping("/featured")
    @Operation(summary = "获取精选诗词")
    public Result<PageResult<Poetry>> getFeaturedPoetry(
            @RequestParam(defaultValue = "1") Integer page,
            @RequestParam(defaultValue = "10") Integer size) {
        PageResult<Poetry> featuredPoetry = poetryService.getFeaturedPoetry(page, size);
        return Result.success(featuredPoetry);
    }

    @GetMapping("/search")
    @Operation(summary = "搜索诗词")
    public Result<PageResult<Poetry>> searchPoetry(
            @RequestParam String keyword,
            @RequestParam(defaultValue = "1") Integer page,
            @RequestParam(defaultValue = "10") Integer size) {
        PageResult<Poetry> poetryPageResult = poetryService.searchPoetry(keyword, page, size);
        return Result.success(poetryPageResult);
    }

    @PostMapping
    @AuditLog("创建诗词")
    @Operation(summary = "创建诗词")
    public Result<Void> createPoetry(@RequestBody Poetry poetry) {
        poetryService.save(poetry);
        return Result.success();
    }

    @PutMapping
    @AuditLog("更新诗词")
    @Operation(summary = "更新诗词")
    public Result<Void> updatePoetry(@RequestBody Poetry poetry) {
        poetryService.updateById(poetry);
        return Result.success();
    }

    @DeleteMapping("/{id}")
    @AuditLog("删除诗词")
    @Operation(summary = "删除诗词")
    public Result<Void> deletePoetry(@PathVariable Long id) {
        poetryService.removeById(id);
        return Result.success();
    }
}
