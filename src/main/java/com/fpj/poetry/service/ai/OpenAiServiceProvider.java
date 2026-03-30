package com.fpj.poetry.service.ai;

import com.fpj.poetry.config.AiConfig;
import com.fpj.poetry.domain.Poetry;
import com.theokanning.openai.completion.chat.ChatCompletionRequest;
import com.theokanning.openai.completion.chat.ChatCompletionResult;
import com.theokanning.openai.completion.chat.ChatMessage;
import com.theokanning.openai.service.OpenAiService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.annotation.PostConstruct;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;

/**
 * OpenAI服务实现
 * 支持GPT-3.5、GPT-4等模型
 * 
 * @author AI Assistant
 * @since 2025-03-30
 */
@Slf4j
@Service
public class OpenAiServiceProvider implements AiServiceProvider {

    @Autowired
    private AiConfig aiConfig;

    private OpenAiService openAiService;
    private String modelName;

    @PostConstruct
    public void init() {
        AiConfig.ModelConfig config = aiConfig.getModelConfig("openai");
        if (config != null && config.isEnabled() && config.getApiKey() != null) {
            try {
                Duration timeout = Duration.ofSeconds(config.getTimeout());
                // 如果配置了自定义baseUrl
                if (config.getBaseUrl() != null && !config.getBaseUrl().isEmpty()) {
                    //openAiService = new OpenAiService(config.getApiKey(), timeout, config.getBaseUrl());
                } else {
                    openAiService = new OpenAiService(config.getApiKey(), timeout);
                }
                modelName = config.getModel() != null ? config.getModel() : "gpt-3.5-turbo";
                log.info("OpenAI服务初始化成功，使用模型: {}", modelName);
            } catch (Exception e) {
                log.error("OpenAI服务初始化失败: {}", e.getMessage());
            }
        }
    }

    @Override
    public String getProviderName() {
        return "openai";
    }

    @Override
    public String analyzePoetry(Poetry poetry) throws Exception {
        if (openAiService == null) {
            throw new RuntimeException("OpenAI服务未初始化，请检查配置");
        }

        String prompt = buildPrompt(poetry);
        
        List<ChatMessage> messages = new ArrayList<>();
        messages.add(new ChatMessage("system", "你是一位精通中国古典诗词的文学专家。请对用户提供诗词进行深入分析。"));
        messages.add(new ChatMessage("user", prompt));

        ChatCompletionRequest request = ChatCompletionRequest.builder()
                .model(modelName)
                .messages(messages)
                .temperature(aiConfig.getModelConfig("openai").getTemperature())
                .maxTokens(aiConfig.getModelConfig("openai").getMaxTokens())
                .build();

        ChatCompletionResult result = openAiService.createChatCompletion(request);
        
        if (result.getChoices() != null && !result.getChoices().isEmpty()) {
            return result.getChoices().get(0).getMessage().getContent();
        }
        
        throw new RuntimeException("OpenAI返回结果为空");
    }

    @Override
    public boolean isAvailable() {
        return openAiService != null;
    }

    @Override
    public String getModelVersion() {
        return modelName;
    }

    /**
     * 构建提示词
     */
    private String buildPrompt(Poetry poetry) {
        StringBuilder sb = new StringBuilder();
        sb.append("请对以下诗词进行全面分析：\n\n");
        sb.append("【诗词标题】").append(poetry.getTitle()).append("\n");
        sb.append("【作者】").append(poetry.getAuthor() != null ? poetry.getAuthor() : "未知").append("\n");
        sb.append("【朝代】").append(poetry.getDynasty() != null ? poetry.getDynasty() : "未知").append("\n");
        sb.append("【内容】\n").append(poetry.getContent()).append("\n\n");
        sb.append("请从以下几个方面进行分析，并以JSON格式返回：\n");
        sb.append("{\n");
        sb.append("  \"dynastyAnalysis\": \"朝代背景分析\",\n");
        sb.append("  \"authorAnalysis\": \"作者背景介绍\",\n");
        sb.append("  \"backgroundAnalysis\": \"诗词创作背景\",\n");
        sb.append("  \"contentAnalysis\": \"诗词大意和逐句解析\",\n");
        sb.append("  \"artisticAnalysis\": \"艺术手法和修辞分析\"\n");
        sb.append("}\n\n");
        sb.append("要求：\n");
        sb.append("1. 分析要专业、深入、有见地\n");
        sb.append("2. 语言优美，体现古典诗词的韵味\n");
        sb.append("3. JSON格式要规范，便于程序解析\n");
        sb.append("4. 每个字段内容控制在300-500字");
        
        return sb.toString();
    }
}