package com.fpj.poetry.service.ai;

import com.fpj.poetry.domain.Poetry;

/**
 * AI服务提供者接口
 * 定义统一的AI调用规范，不同模型实现此接口
 * 
 * @author AI Assistant
 * @since 2025-03-30
 */
public interface AiServiceProvider {

    /**
     * 获取服务提供者名称
     * 
     * @return 服务名称，如 "openai", "wenxin", "qianwen" 等
     */
    String getProviderName();

    /**
     * 分析诗词
     * 
     * @param poetry 诗词对象
     * @return 分析结果文本
     * @throws Exception 调用异常
     */
    String analyzePoetry(Poetry poetry) throws Exception;

    /**
     * 检查服务是否可用
     * 
     * @return true-可用，false-不可用
     */
    boolean isAvailable();

    /**
     * 获取模型版本信息
     * 
     * @return 模型版本
     */
    String getModelVersion();
}