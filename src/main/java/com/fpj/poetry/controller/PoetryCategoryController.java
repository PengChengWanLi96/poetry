package com.fpj.poetry.controller;

import com.fpj.poetry.annotation.AuditLog;
import com.fpj.poetry.common.Result;
import com.fpj.poetry.domain.PoetryCategory;
import com.fpj.poetry.service.PoetryCategoryService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/poetry/category")
@Tag(name = "诗词分类管理", description = "诗词分类相关接口")
public class PoetryCategoryController {

    @Autowired
    private PoetryCategoryService categoryService;

    @GetMapping("/list")
    @Operation(summary = "获取所有分类")
    public Result<List<PoetryCategory>> getAllCategories() {
        return Result.success(categoryService.getAllCategories());
    }

    @GetMapping("/stats")
    @Operation(summary = "获取分类统计")
    public Result<List<Map<String, Object>>> getCategoryStats() {
        return Result.success(categoryService.getCategoryStats());
    }

    @GetMapping("/{code}")
    @Operation(summary = "根据code获取分类")
    public Result<PoetryCategory> getCategoryByCode(@PathVariable String code) {
        return Result.success(categoryService.getCategoryByCode(code));
    }

    @PostMapping
    @AuditLog("创建分类")
    @Operation(summary = "创建分类")
    public Result<Void> createCategory(@RequestBody PoetryCategory category) {
        categoryService.save(category);
        return Result.success();
    }

    @PutMapping
    @AuditLog("更新分类")
    @Operation(summary = "更新分类")
    public Result<Void> updateCategory(@RequestBody PoetryCategory category) {
        categoryService.updateById(category);
        return Result.success();
    }

    @DeleteMapping("/{id}")
    @AuditLog("删除分类")
    @Operation(summary = "删除分类")
    public Result<Void> deleteCategory(@PathVariable Long id) {
        categoryService.removeById(id);
        return Result.success();
    }
}
