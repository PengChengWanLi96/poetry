package com.fpj.poetry.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import java.util.HashMap;
import java.util.Map;

/**
 * AI配置类
 * 支持多模型配置，可在application.properties中配置
 * 
 * 配置示例：
 * poetry.ai.enabled=true
 * poetry.ai.default-model=openai
 * poetry.ai.models.openai.api-key=your-api-key
 * poetry.ai.models.openai.base-url=https://api.openai.com
 * poetry.ai.models.openai.model=gpt-4
 * 
 * @author AI Assistant
 * @since 2025-03-30
 */
@Data
@Configuration
@ConfigurationProperties(prefix = "poetry.ai")
public class AiConfig {

    /**
     * 是否启用AI功能
     */
    private boolean enabled = true;

    /**
     * 默认使用的AI模型
     */
    private String defaultModel = "openai";

    /**
     * 模型配置集合
     */
    private Map<String, ModelConfig> models = new HashMap<>();

    /**
     * 单个模型配置
     */
    @Data
    public static class ModelConfig {
        /**
         * API密钥
         */
        private String apiKey;

        /**
         * API密钥2（部分模型需要多个key）
         */
        private String apiSecret;

        /**
         * 基础URL
         */
        private String baseUrl;

        /**
         * 模型名称
         */
        private String model;

        /**
         * 超时时间（秒）
         */
        private int timeout = 60;

        /**
         * 温度参数（控制创造性）
         */
        private double temperature = 0.7;

        /**
         * 最大token数
         */
        private int maxTokens = 2000;

        /**
         * 是否启用
         */
        private boolean enabled = true;

        /**
         * 其他自定义配置
         */
        private Map<String, String> extra = new HashMap<>();
    }

    /**
     * 获取指定模型的配置
     * 
     * @param modelName 模型名称
     * @return 模型配置
     */
    public ModelConfig getModelConfig(String modelName) {
        return models.get(modelName);
    }

    /**
     * 获取默认模型的配置
     * 
     * @return 默认模型配置
     */
    public ModelConfig getDefaultModelConfig() {
        return models.get(defaultModel);
    }
}