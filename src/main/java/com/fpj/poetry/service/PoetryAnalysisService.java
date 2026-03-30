package com.fpj.poetry.service;

import com.fpj.poetry.domain.PoetryAnalysis;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * AI诗词分析服务接口
 * 
 * @author AI Assistant
 * @since 2025-03-30
 */
public interface PoetryAnalysisService extends IService<PoetryAnalysis> {

    /**
     * 根据诗词ID获取分析结果
     * 
     * @param poetryId 诗词ID
     * @return 分析结果，不存在返回null
     */
    PoetryAnalysis getAnalysisByPoetryId(Long poetryId);

    /**
     * 检查是否存在分析记录
     * 
     * @param poetryId 诗词ID
     * @return true-存在
     */
    boolean hasAnalysis(Long poetryId);

    /**
     * 生成诗词分析（异步）
     * 使用配置文件中的默认模型
     * 
     * @param poetryId 诗词ID
     * @return 分析记录（初始状态为生成中）
     */
    PoetryAnalysis generateAnalysis(Long poetryId);

    /**
     * 重新生成诗词分析
     * 
     * @param poetryId 诗词ID
     * @return 新的分析记录
     */
    PoetryAnalysis regenerateAnalysis(Long poetryId);

    /**
     * 删除诗词分析记录
     * 
     * @param poetryId 诗词ID
     * @return true-成功
     */
    boolean deleteAnalysis(Long poetryId);
}