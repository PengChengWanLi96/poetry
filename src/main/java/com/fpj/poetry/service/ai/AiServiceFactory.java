package com.fpj.poetry.service.ai;

import com.fpj.poetry.config.AiConfig;
import jakarta.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * AI服务工厂
 * 统一管理所有AI服务提供者
 * 
 * @author AI Assistant
 * @since 2025-03-30
 */
@Slf4j
@Component
public class AiServiceFactory {

    @Autowired
    private AiConfig aiConfig;

    @Autowired
    private List<AiServiceProvider> providers = new ArrayList<>();

    private final Map<String, AiServiceProvider> providerMap = new ConcurrentHashMap<>();

    @PostConstruct
    public void init() {
        for (AiServiceProvider provider : providers) {
            providerMap.put(provider.getProviderName(), provider);
            log.info("注册AI服务提供者: {}", provider.getProviderName());
        }
    }

    /**
     * 获取指定的AI服务提供者
     * 
     * @param providerName 服务提供者名称
     * @return AI服务提供者
     */
    public AiServiceProvider getProvider(String providerName) {
        AiServiceProvider provider = providerMap.get(providerName);
        if (provider == null) {
            throw new RuntimeException("未找到AI服务提供者: " + providerName);
        }
        if (!provider.isAvailable()) {
            throw new RuntimeException("AI服务提供者不可用: " + providerName);
        }
        return provider;
    }

    /**
     * 获取默认的AI服务提供者
     * 
     * @return 默认AI服务提供者
     */
    public AiServiceProvider getDefaultProvider() {
        String defaultModel = aiConfig.getDefaultModel();
        return getProvider(defaultModel);
    }

    /**
     * 获取所有可用的服务提供者
     * 
     * @return 可用的服务提供者列表
     */
    public List<AiServiceProvider> getAvailableProviders() {
        List<AiServiceProvider> available = new ArrayList<>();
        for (AiServiceProvider provider : providers) {
            if (provider.isAvailable()) {
                available.add(provider);
            }
        }
        return available;
    }

    /**
     * 检查指定服务是否可用
     * 
     * @param providerName 服务提供者名称
     * @return true-可用
     */
    public boolean isProviderAvailable(String providerName) {
        AiServiceProvider provider = providerMap.get(providerName);
        return provider != null && provider.isAvailable();
    }

    /**
     * 获取所有已注册的服务提供者名称
     * 
     * @return 服务提供者名称列表
     */
    public List<String> getAllProviderNames() {
        return new ArrayList<>(providerMap.keySet());
    }
}