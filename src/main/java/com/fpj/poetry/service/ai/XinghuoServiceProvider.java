package com.fpj.poetry.service.ai;

import com.fpj.poetry.config.AiConfig;
import com.fpj.poetry.domain.Poetry;
import lombok.extern.slf4j.Slf4j;
import okhttp3.*;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.annotation.PostConstruct;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import java.io.IOException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 讯飞星火服务实现
 * 使用讯飞星火认知大模型API
 * 
 * 注意：讯飞API需要鉴权签名
 * 
 * @author AI Assistant
 * @since 2025-03-30
 */
@Slf4j
@Service
public class XinghuoServiceProvider implements AiServiceProvider {

    @Autowired
    private AiConfig aiConfig;

    private OkHttpClient httpClient;
    private String appId;
    private String apiKey;
    private String apiSecret;
    private String hostUrl;
    private String modelName;

    @PostConstruct
    public void init() {
        AiConfig.ModelConfig config = aiConfig.getModelConfig("xinghuo");
        if (config != null && config.isEnabled()) {
            this.appId = config.getExtra().get("appId");
            this.apiKey = config.getApiKey();
            this.apiSecret = config.getApiSecret();
            this.modelName = config.getModel() != null ? config.getModel() : "generalv3.5";
            this.hostUrl = config.getBaseUrl() != null ? config.getBaseUrl() : "https://spark-api.xf-yun.com/v3.5/chat";
            this.httpClient = new OkHttpClient.Builder()
                    .connectTimeout(java.time.Duration.ofSeconds(config.getTimeout()))
                    .readTimeout(java.time.Duration.ofSeconds(config.getTimeout()))
                    .build();
            log.info("讯飞星火服务初始化成功，使用模型: {}", modelName);
        }
    }

    @Override
    public String getProviderName() {
        return "xinghuo";
    }

    @Override
    public String analyzePoetry(Poetry poetry) throws Exception {
        if (!isAvailable()) {
            throw new RuntimeException("讯飞星火服务未初始化，请检查配置");
        }

        String prompt = buildPrompt(poetry);
        
        // 构建鉴权URL
        String authUrl = getAuthUrl(hostUrl, apiKey, apiSecret);
        
        JSONObject requestBody = new JSONObject();
        JSONObject header = new JSONObject();
        header.put("app_id", appId);
        
        JSONObject parameter = new JSONObject();
        JSONObject chat = new JSONObject();
        chat.put("domain", modelName);
        chat.put("temperature", aiConfig.getModelConfig("xinghuo").getTemperature());
        chat.put("max_tokens", aiConfig.getModelConfig("xinghuo").getMaxTokens());
        parameter.put("chat", chat);
        
        JSONObject payload = new JSONObject();
        JSONObject message = new JSONObject();
        JSONArray text = new JSONArray();
        
        JSONObject systemMsg = new JSONObject();
        systemMsg.put("role", "system");
        systemMsg.put("content", "你是一位精通中国古典诗词的文学专家。请对用户提供诗词进行深入分析。");
        text.put(systemMsg);
        
        JSONObject userMsg = new JSONObject();
        userMsg.put("role", "user");
        userMsg.put("content", prompt);
        text.put(userMsg);
        
        message.put("text", text);
        payload.put("message", message);
        
        requestBody.put("header", header);
        requestBody.put("parameter", parameter);
        requestBody.put("payload", payload);

        Request request = new Request.Builder()
                .url(authUrl)
                .post(RequestBody.create(requestBody.toString(), MediaType.parse("application/json")))
                .build();

        try (Response response = httpClient.newCall(request).execute()) {
            if (!response.isSuccessful()) {
                throw new IOException("API调用失败: " + response.code());
            }
            
            String responseBody = response.body().string();
            JSONObject jsonResponse = new JSONObject(responseBody);
            
            if (jsonResponse.has("payload") && jsonResponse.getJSONObject("payload").has("choices")) {
                JSONObject choices = jsonResponse.getJSONObject("payload").getJSONObject("choices");
                if (choices.has("text")) {
                    JSONArray textArray = choices.getJSONArray("text");
                    if (textArray.length() > 0) {
                        return textArray.getJSONObject(0).getString("content");
                    }
                }
            }
            
            if (jsonResponse.has("header") && jsonResponse.getJSONObject("header").has("message")) {
                throw new RuntimeException("讯飞API错误: " + jsonResponse.getJSONObject("header").getString("message"));
            }
            
            throw new RuntimeException("讯飞API返回结果格式错误");
        }
    }

    @Override
    public boolean isAvailable() {
        return appId != null && !appId.isEmpty() && 
               apiKey != null && !apiKey.isEmpty() && 
               apiSecret != null && !apiSecret.isEmpty();
    }

    @Override
    public String getModelVersion() {
        return modelName;
    }

    /**
     * 生成鉴权URL
     */
    private String getAuthUrl(String hostUrl, String apiKey, String apiSecret) throws Exception {
        URL url = new URL(hostUrl);
        SimpleDateFormat format = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z", Locale.US);
        format.setTimeZone(TimeZone.getTimeZone("GMT"));
        String date = format.format(new Date());
        
        String preStr = "host: " + url.getHost() + "\n" +
                       "date: " + date + "\n" +
                       "GET " + url.getPath() + " HTTP/1.1";
        
        Mac mac = Mac.getInstance("HmacSHA256");
        SecretKeySpec spec = new SecretKeySpec(apiSecret.getBytes(StandardCharsets.UTF_8), "HmacSHA256");
        mac.init(spec);
        byte[] hexDigits = mac.doFinal(preStr.getBytes(StandardCharsets.UTF_8));
        String sha = Base64.getEncoder().encodeToString(hexDigits);
        
        String authorization = String.format("api_key=\"%s\", algorithm=\"%s\", headers=\"%s\", signature=\"%s\"",
                apiKey, "hmac-sha256", "host date request-line", sha);
        
        String authBase = Base64.getEncoder().encodeToString(authorization.getBytes(StandardCharsets.UTF_8));
        
        return hostUrl + "?authorization=" + authBase + "&date=" + date + "&host=" + url.getHost();
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