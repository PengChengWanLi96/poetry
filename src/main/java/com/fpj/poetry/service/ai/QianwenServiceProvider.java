package com.fpj.poetry.service.ai;

import com.fpj.poetry.config.AiConfig;
import com.fpj.poetry.domain.Poetry;
import jakarta.annotation.PostConstruct;
import java.io.IOException;
import lombok.extern.slf4j.Slf4j;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 阿里通义千问服务实现
 * 使用阿里云DashScope API
 * 
 * @author AI Assistant
 * @since 2025-03-30
 */
@Slf4j
@Service
public class QianwenServiceProvider implements AiServiceProvider {

    @Autowired
    private AiConfig aiConfig;

    private OkHttpClient httpClient;
    private String apiKey;
    private String modelName;
    private static final String API_URL = "https://dashscope.aliyuncs.com/api/v1/services/aigc/text-generation/generation";

    @PostConstruct
    public void init() {
        AiConfig.ModelConfig config = aiConfig.getModelConfig("qianwen");
        if (config != null && config.isEnabled()) {
            this.apiKey = config.getApiKey();
            this.modelName = config.getModel() != null ? config.getModel() : "qwen-turbo";
            this.httpClient = new OkHttpClient.Builder()
                    .connectTimeout(java.time.Duration.ofSeconds(config.getTimeout()))
                    .readTimeout(java.time.Duration.ofSeconds(config.getTimeout()))
                    .build();
            log.info("阿里通义千问服务初始化成功，使用模型: {}", modelName);
        }
    }

    @Override
    public String getProviderName() {
        return "qianwen";
    }

    @Override
    public String analyzePoetry(Poetry poetry) throws Exception {
        if (!isAvailable()) {
            throw new RuntimeException("阿里通义千问服务未初始化，请检查配置");
        }

        String prompt = buildPrompt(poetry);

        JSONObject requestBody = new JSONObject();
        requestBody.put("model", modelName);
        
        JSONObject input = new JSONObject();
        JSONArray messages = new JSONArray();
        
        JSONObject systemMsg = new JSONObject();
        systemMsg.put("role", "system");
        systemMsg.put("content", "你是一位精通中国古典诗词的文学专家。请对用户提供诗词进行深入分析。");
        messages.put(systemMsg);
        
        JSONObject userMsg = new JSONObject();
        userMsg.put("role", "user");
        userMsg.put("content", prompt);
        messages.put(userMsg);
        
        input.put("messages", messages);
        requestBody.put("input", input);
        
        JSONObject parameters = new JSONObject();
        parameters.put("temperature", aiConfig.getModelConfig("qianwen").getTemperature());
        parameters.put("max_tokens", aiConfig.getModelConfig("qianwen").getMaxTokens());
        parameters.put("result_format", "message");
        requestBody.put("parameters", parameters);

        Request request = new Request.Builder()
                .url(API_URL)
                .post(RequestBody.create(requestBody.toString(), MediaType.parse("application/json")))
                .addHeader("Authorization", "Bearer " + apiKey)
                .addHeader("Content-Type", "application/json")
                .build();

        try (Response response = httpClient.newCall(request).execute()) {
            if (!response.isSuccessful()) {
                String errorBody = response.body() != null ? response.body().string() : "";
                throw new IOException("API调用失败: " + response.code() + " " + errorBody);
            }
            
            String responseBody = response.body().string();
            JSONObject jsonResponse = new JSONObject(responseBody);
            
            if (jsonResponse.has("output") && jsonResponse.getJSONObject("output").has("choices")) {
                JSONArray choices = jsonResponse.getJSONObject("output").getJSONArray("choices");
                if (choices.length() > 0) {
                    JSONObject message = choices.getJSONObject(0).getJSONObject("message");
                    return message.getString("content");
                }
            }
            
            if (jsonResponse.has("message")) {
                throw new RuntimeException("通义千问API错误: " + jsonResponse.getString("message"));
            }
            
            throw new RuntimeException("通义千问API返回结果格式错误");
        }
    }

    @Override
    public boolean isAvailable() {
        return apiKey != null && !apiKey.isEmpty();
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