package com.fpj.poetry.controller;

import com.fpj.poetry.annotation.AuditLog;
import com.fpj.poetry.annotation.TimeCost;
import com.fpj.poetry.common.Result;
import com.fpj.poetry.domain.PoetryCategory;
import com.fpj.poetry.service.PoetryCategoryService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

@RestController
@RequestMapping("/api/poetry/categories")
@Tag(name = "诗词分类管理", description = "诗词分类相关接口")
public class PoetryCategoryController {

    private static final Logger log = LoggerFactory.getLogger(PoetryCategoryController.class);

    @Autowired
    private PoetryCategoryService categoryService;

    @TimeCost(value = "获取所有分类", unit = TimeUnit.MILLISECONDS)
    @GetMapping("")
    @Operation(summary = "获取所有分类")
    public Result<List<PoetryCategory>> getAllCategories() {
        log.info("获取所有分类请求");
        List<PoetryCategory> categories = categoryService.getAllCategories();
        log.info("获取所有分类返回数据: size={}", categories.size());
        return Result.success(categories);
    }

    @TimeCost(value = "获取分类统计", unit = TimeUnit.MILLISECONDS)
    @GetMapping("/stats")
    @Operation(summary = "获取分类统计")
    public Result<List<Map<String, Object>>> getCategoryStats() {
        log.info("获取分类统计请求");
        List<Map<String, Object>> stats = categoryService.getCategoryStats();
        log.info("获取分类统计返回数据: size={}", stats.size());
        return Result.success(stats);
    }

    @TimeCost(value = "根据code获取分类", unit = TimeUnit.MILLISECONDS)
    @GetMapping("/{code}")
    @Operation(summary = "根据code获取分类")
    public Result<PoetryCategory> getCategoryByCode(@PathVariable String code) {
        log.info("根据code获取分类请求参数: code={}", code);
        PoetryCategory category = categoryService.getCategoryByCode(code);
        log.info("根据code获取分类返回数据: {}", category);
        return Result.success(category);
    }

    @TimeCost(value = "创建分类", unit = TimeUnit.MILLISECONDS)
    @PostMapping
    @AuditLog("创建分类")
    @Operation(summary = "创建分类")
    public Result<Void> createCategory(@RequestBody PoetryCategory category) {
        log.info("创建分类请求参数: {}", category);
        categoryService.save(category);
        return Result.success();
    }

    @TimeCost(value = "更新分类", unit = TimeUnit.MILLISECONDS)
    @PutMapping
    @AuditLog("更新分类")
    @Operation(summary = "更新分类")
    public Result<Void> updateCategory(@RequestBody PoetryCategory category) {
        log.info("更新分类请求参数: {}", category);
        categoryService.updateById(category);
        return Result.success();
    }

    @TimeCost(value = "删除分类", unit = TimeUnit.MILLISECONDS)
    @DeleteMapping("/{id}")
    @AuditLog("删除分类")
    @Operation(summary = "删除分类")
    public Result<Void> deleteCategory(@PathVariable Long id) {
        log.info("删除分类请求参数: id={}", id);
        categoryService.removeById(id);
        return Result.success();
    }
}
