package com.fpj.poetry.repository;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.fpj.poetry.domain.PoetryAnalysis;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * AI诗词分析Mapper接口
 * 
 * @author AI Assistant
 * @since 2025-03-30
 */
@Mapper
public interface PoetryAnalysisRepository extends BaseMapper<PoetryAnalysis> {

    /**
     * 根据诗词ID查询分析结果
     * 
     * @param poetryId 诗词ID
     * @return AI分析结果
     */
    @Select("SELECT * FROM poetry_analysis WHERE poetry_id = #{poetryId} LIMIT 1")
    PoetryAnalysis selectByPoetryId(@Param("poetryId") Long poetryId);

    /**
     * 检查是否存在分析记录
     * 
     * @param poetryId 诗词ID
     * @return 存在返回1，否则返回0
     */
    @Select("SELECT COUNT(1) FROM poetry_analysis WHERE poetry_id = #{poetryId}")
    int existsByPoetryId(@Param("poetryId") Long poetryId);
}