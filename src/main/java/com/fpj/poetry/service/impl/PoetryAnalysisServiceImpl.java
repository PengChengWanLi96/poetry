package com.fpj.poetry.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.fpj.poetry.config.AiConfig;
import com.fpj.poetry.domain.Poetry;
import com.fpj.poetry.domain.PoetryAnalysis;
import com.fpj.poetry.repository.PoetryAnalysisRepository;
import com.fpj.poetry.repository.PoetryRepository;
import com.fpj.poetry.service.PoetryAnalysisService;
import com.fpj.poetry.service.ai.AiServiceFactory;
import com.fpj.poetry.service.ai.AiServiceProvider;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;

/**
 * AI诗词分析服务实现类
 * 
 * @author AI Assistant
 * @since 2025-03-30
 */
@Slf4j
@Service
public class PoetryAnalysisServiceImpl extends ServiceImpl<PoetryAnalysisRepository, PoetryAnalysis> 
        implements PoetryAnalysisService {

    @Autowired
    private PoetryAnalysisRepository poetryAnalysisRepository;

    @Autowired
    private PoetryRepository poetryRepository;

    @Autowired
    private AiServiceFactory aiServiceFactory;

    @Autowired
    private AiConfig aiConfig;

    private final Gson gson = new Gson();

    @Override
    public PoetryAnalysis getAnalysisByPoetryId(Long poetryId) {
        return poetryAnalysisRepository.selectByPoetryId(poetryId);
    }

    @Override
    public boolean hasAnalysis(Long poetryId) {
        return poetryAnalysisRepository.existsByPoetryId(poetryId) > 0;
    }

    @Override
    @Transactional
    public PoetryAnalysis generateAnalysis(Long poetryId) {
        // 检查AI功能是否启用
        if (!aiConfig.isEnabled()) {
            throw new RuntimeException("AI解析功能未启用");
        }
        
        // 获取配置的默认模型
        String modelName = aiConfig.getDefaultModel();
        
        // 检查诗词是否存在
        Poetry poetry = poetryRepository.selectById(poetryId);
        if (poetry == null) {
            throw new RuntimeException("诗词不存在: " + poetryId);
        }

        // 检查是否已有分析记录
        PoetryAnalysis existing = getAnalysisByPoetryId(poetryId);
        if (existing != null && existing.getStatus() == PoetryAnalysis.Status.GENERATING.getCode()) {
            log.warn("诗词 {} 正在生成中，请勿重复提交", poetryId);
            throw new RuntimeException("诗词解析正在生成中，请勿重复提交: " + poetryId);
        }

        // 创建新的分析记录，状态为生成中
        PoetryAnalysis analysis = new PoetryAnalysis();
        analysis.setPoetryId(poetryId);
        analysis.setStatus(PoetryAnalysis.Status.GENERATING.getCode());
        analysis.setAiModel(modelName);
        
        save(analysis);
        log.info("开始生成诗词 {} 的AI分析，使用模型: {}", poetryId, modelName);

        // 异步执行分析
        doAsyncAnalysis(analysis, poetry, modelName);

        return analysis;
    }

    @Override
    @Transactional
    public PoetryAnalysis regenerateAnalysis(Long poetryId) {
        // 删除旧记录
        PoetryAnalysis existing = getAnalysisByPoetryId(poetryId);
        if (existing != null) {
            removeById(existing.getId());
            log.info("删除诗词 {} 的旧分析记录", poetryId);
        }

        // 重新生成
        return generateAnalysis(poetryId);
    }

    @Override
    @Transactional
    public boolean deleteAnalysis(Long poetryId) {
        PoetryAnalysis analysis = getAnalysisByPoetryId(poetryId);
        if (analysis != null) {
            return removeById(analysis.getId());
        }
        return false;
    }

    /**
     * 异步执行AI分析
     * 注意：需要启用@EnableAsync
     */
    @Async
    protected void doAsyncAnalysis(PoetryAnalysis analysis, Poetry poetry, String modelName) {
        long startTime = System.currentTimeMillis();
        
        try {
            // 获取AI服务提供者
            AiServiceProvider provider = aiServiceFactory.getProvider(modelName);
            
            // 调用AI进行分析
            String result = provider.analyzePoetry(poetry);
            
            // 解析JSON结果
            parseAndSaveResult(analysis, result, provider);
            
            // 更新状态为完成
            analysis.setStatus(PoetryAnalysis.Status.COMPLETED.getCode());
            analysis.setGenerateTime((int) (System.currentTimeMillis() - startTime));
            
            updateById(analysis);
            log.info("诗词 {} 的AI分析完成，耗时 {} ms", poetry.getId(), analysis.getGenerateTime());
            
        } catch (Exception e) {
            log.error("诗词 {} 的AI分析失败: {}", poetry.getId(), e.getMessage(), e);
            
            // 更新状态为失败
            analysis.setStatus(PoetryAnalysis.Status.FAILED.getCode());
            analysis.setErrorMsg(e.getMessage());
            analysis.setGenerateTime((int) (System.currentTimeMillis() - startTime));
            
            updateById(analysis);
        }
    }

    /**
     * 解析AI返回的结果并保存
     */
    private void parseAndSaveResult(PoetryAnalysis analysis, String result, AiServiceProvider provider) {
        try {
            // 尝试解析JSON
            JsonObject jsonResult = gson.fromJson(result, JsonObject.class);
            
            if (jsonResult.has("dynastyAnalysis")) {
                analysis.setDynastyAnalysis(jsonResult.get("dynastyAnalysis").getAsString());
            }
            if (jsonResult.has("authorAnalysis")) {
                analysis.setAuthorAnalysis(jsonResult.get("authorAnalysis").getAsString());
            }
            if (jsonResult.has("backgroundAnalysis")) {
                analysis.setBackgroundAnalysis(jsonResult.get("backgroundAnalysis").getAsString());
            }
            if (jsonResult.has("contentAnalysis")) {
                analysis.setContentAnalysis(jsonResult.get("contentAnalysis").getAsString());
            }
            if (jsonResult.has("artisticAnalysis")) {
                analysis.setArtisticAnalysis(jsonResult.get("artisticAnalysis").getAsString());
            }
            
            // 保存完整JSON
            analysis.setFullAnalysis(result);
            
        } catch (Exception e) {
            log.warn("AI返回结果不是标准JSON格式，保存原始内容");
            // 如果不是JSON格式，保存到contentAnalysis字段
            analysis.setContentAnalysis(result);
            analysis.setFullAnalysis(result);
        }
        
        // 设置模型信息
        analysis.setAiModel(provider.getProviderName());
        analysis.setAiVersion(provider.getModelVersion());
    }
}