package com.fpj.poetry.controller;

import com.fpj.poetry.annotation.AuditLog;
import com.fpj.poetry.annotation.TimeCost;
import com.fpj.poetry.common.Result;
import com.fpj.poetry.config.AiConfig;
import com.fpj.poetry.domain.PoetryAnalysis;
import com.fpj.poetry.service.PoetryAnalysisService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/**
 * AI诗词分析控制器
 * 
 * @author AI Assistant
 * @since 2025-03-30
 */
@Slf4j
@RestController
@RequestMapping("/api/poetry/analysis")
@Tag(name = "AI诗词分析", description = "诗词AI分析相关接口")
public class PoetryAnalysisController {

    @Autowired
    private PoetryAnalysisService poetryAnalysisService;

    @Autowired
    private AiConfig aiConfig;


    /**
     * 是否启用AI诗词分析
     */
    @GetMapping("/check_enable")
    @Operation(summary = "是否启用ai诗词分析")
    public Result<Boolean> checkAIAnalysisEnabled() {

        // 如果AI功能未启用，返回未启用状态
        if (!aiConfig.isEnabled()) {
            log.info("AI解析功能未启用");
            return Result.success(Boolean.FALSE);
        }
        return Result.success(Boolean.TRUE);
    }


    /**
     * 获取诗词分析结果
     */
    @GetMapping("/{poetryId}")
    @Operation(summary = "获取诗词分析结果")
    @TimeCost(value = "获取诗词分析", unit = TimeUnit.MILLISECONDS)
    public Result<PoetryAnalysis> getAnalysis(
            @Parameter(description = "诗词ID") @PathVariable Long poetryId) {
        
        // 如果AI功能未启用，返回错误
        if (!aiConfig.isEnabled()) {
            return Result.error("AI解析功能未启用");
        }
        
        PoetryAnalysis analysis = poetryAnalysisService.getAnalysisByPoetryId(poetryId);
        
        if (analysis == null) {
            return Result.error("该诗词暂无AI分析");
        }
        
        return Result.success(analysis);
    }

    /**
     * 检查是否存在分析记录
     */
    @GetMapping("/{poetryId}/exists")
    @Operation(summary = "检查是否存在分析记录")
    public Result<PoetryAnalysis> checkAnalysisExists(
            @Parameter(description = "诗词ID") @PathVariable Long poetryId) {

        // 如果AI功能未启用，返回未启用状态
        if (!aiConfig.isEnabled()) {
            log.info("AI解析功能未启用");
            return Result.success(null);
        }
        
        PoetryAnalysis analysis = poetryAnalysisService.getAnalysisByPoetryId(poetryId);
        
        return Result.success(analysis);
    }

    /**
     * 生成诗词分析
     * 使用配置文件中的默认模型
     */
    @PostMapping("/{poetryId}")
    @Operation(summary = "生成诗词分析")
    @TimeCost(value = "生成诗词分析", unit = TimeUnit.MILLISECONDS)
    @AuditLog(operation = "生成诗词AI分析")
    public Result<PoetryAnalysis> generateAnalysis(
            @Parameter(description = "诗词ID") @PathVariable Long poetryId) {
        
        // 检查AI功能是否启用
        if (!aiConfig.isEnabled()) {
            return Result.error("AI解析功能未启用");
        }
        
        try {
            PoetryAnalysis analysis = poetryAnalysisService.generateAnalysis(poetryId);
            return Result.success(analysis);
        } catch (Exception e) {
            log.error("生成诗词分析失败: {}", e.getMessage(), e);
            return Result.error("AI解析服务暂不可用，请稍后重试");
        }
    }

    /**
     * 重新生成诗词分析
     */
    @PostMapping("/{poetryId}/regenerate")
    @Operation(summary = "重新生成诗词分析")
    @TimeCost(value = "重新生成诗词分析", unit = TimeUnit.MILLISECONDS)
    @AuditLog(operation = "重新生成诗词AI分析")
    public Result<PoetryAnalysis> regenerateAnalysis(
            @Parameter(description = "诗词ID") @PathVariable Long poetryId) {
        
        // 检查AI功能是否启用
        if (!aiConfig.isEnabled()) {
            return Result.error("AI解析功能未启用");
        }
        
        try {
            // 先删除旧记录
            poetryAnalysisService.deleteAnalysis(poetryId);
            
            // 重新生成
            PoetryAnalysis analysis = poetryAnalysisService.generateAnalysis(poetryId);
            
            return Result.success(analysis);
        } catch (Exception e) {
            log.error("重新生成诗词分析失败: {}", e.getMessage(), e);
            return Result.error("AI解析服务暂不可用，请稍后重试");
        }
    }

    /**
     * 删除诗词分析
     */
    @DeleteMapping("/{poetryId}")
    @Operation(summary = "删除诗词分析")
    @AuditLog(operation = "删除诗词AI分析")
    public Result<Void> deleteAnalysis(
            @Parameter(description = "诗词ID") @PathVariable Long poetryId) {
        
        boolean success = poetryAnalysisService.deleteAnalysis(poetryId);
        
        if (success) {
            return Result.success();
        } else {
            return Result.error("删除失败，记录不存在");
        }
    }
}