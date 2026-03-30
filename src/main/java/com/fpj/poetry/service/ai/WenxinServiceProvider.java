package com.fpj.poetry.service.ai;

import com.baidu.aip.nlp.AipNlp;
import com.fpj.poetry.config.AiConfig;
import com.fpj.poetry.domain.Poetry;
import lombok.extern.slf4j.Slf4j;
import okhttp3.*;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.annotation.PostConstruct;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * 百度文心一言服务实现
 * 使用百度千帆大模型API
 * 
 * 注意：百度文心一言需要申请access_token
 * 
 * @author AI Assistant
 * @since 2025-03-30
 */
@Slf4j
@Service
public class WenxinServiceProvider implements AiServiceProvider {

    @Autowired
    private AiConfig aiConfig;

    private OkHttpClient httpClient;
    private String apiKey;
    private String apiSecret;
    private String modelName;
    private static final String ACCESS_TOKEN_URL = "https://aip.baidubce.com/oauth/2.0/token";
    private static final String CHAT_URL = "https://aip.baidubce.com/rpc/2.0/ai_custom/v1/wenxinworkshop/chat/";

    @PostConstruct
    public void init() {
        AiConfig.ModelConfig config = aiConfig.getModelConfig("wenxin");
        if (config != null && config.isEnabled()) {
            this.apiKey = config.getApiKey();
            this.apiSecret = config.getApiSecret();
            this.modelName = config.getModel() != null ? config.getModel() : "ERNIE-Bot-4";
            this.httpClient = new OkHttpClient.Builder()
                    .connectTimeout(java.time.Duration.ofSeconds(config.getTimeout()))
                    .readTimeout(java.time.Duration.ofSeconds(config.getTimeout()))
                    .build();
            log.info("百度文心服务初始化成功，使用模型: {}", modelName);
        }
    }

    @Override
    public String getProviderName() {
        return "wenxin";
    }

    @Override
    public String analyzePoetry(Poetry poetry) throws Exception {
        if (!isAvailable()) {
            throw new RuntimeException("百度文心服务未初始化，请检查配置");
        }

        String accessToken = getAccessToken();
        String prompt = buildPrompt(poetry);

        JSONObject requestBody = new JSONObject();
        JSONArray messages = new JSONArray();
        
        JSONObject systemMsg = new JSONObject();
        systemMsg.put("role", "user");
        systemMsg.put("content", "你是一位精通中国古典诗词的文学专家。请对用户提供诗词进行深入分析。");
        messages.put(systemMsg);
        
        JSONObject userMsg = new JSONObject();
        userMsg.put("role", "user");
        userMsg.put("content", prompt);
        messages.put(userMsg);
        
        requestBody.put("messages", messages);
        requestBody.put("temperature", aiConfig.getModelConfig("wenxin").getTemperature());
        requestBody.put("max_output_tokens", aiConfig.getModelConfig("wenxin").getMaxTokens());

        Request request = new Request.Builder()
                .url(CHAT_URL + modelName + "?access_token=" + accessToken)
                .post(RequestBody.create(requestBody.toString(), MediaType.parse("application/json")))
                .build();

        try (Response response = httpClient.newCall(request).execute()) {
            if (!response.isSuccessful()) {
                throw new IOException("Unexpected code " + response);
            }
            
            String responseBody = response.body().string();
            JSONObject jsonResponse = new JSONObject(responseBody);
            
            if (jsonResponse.has("result")) {
                return jsonResponse.getString("result");
            } else if (jsonResponse.has("error_msg")) {
                throw new RuntimeException("百度API错误: " + jsonResponse.getString("error_msg"));
            }
            
            throw new RuntimeException("百度API返回结果格式错误");
        }
    }

    @Override
    public boolean isAvailable() {
        return apiKey != null && !apiKey.isEmpty() && apiSecret != null && !apiSecret.isEmpty();
    }

    @Override
    public String getModelVersion() {
        return modelName;
    }

    /**
     * 获取Access Token
     */
    private String getAccessToken() throws IOException {
        Map<String, String> params = new HashMap<>();
        params.put("grant_type", "client_credentials");
        params.put("client_id", apiKey);
        params.put("client_secret", apiSecret);

        FormBody.Builder formBuilder = new FormBody.Builder();
        for (Map.Entry<String, String> entry : params.entrySet()) {
            formBuilder.add(entry.getKey(), entry.getValue());
        }

        Request request = new Request.Builder()
                .url(ACCESS_TOKEN_URL)
                .post(formBuilder.build())
                .build();

        try (Response response = httpClient.newCall(request).execute()) {
            if (!response.isSuccessful()) {
                throw new IOException("Failed to get access token: " + response);
            }
            
            String responseBody = response.body().string();
            JSONObject json = new JSONObject(responseBody);
            
            if (json.has("access_token")) {
                return json.getString("access_token");
            }
            
            throw new RuntimeException("获取Access Token失败: " + json.optString("error_description", "未知错误"));
        }
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