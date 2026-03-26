package com.fpj.poetry.repository;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.fpj.poetry.domain.PoetryCategory;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PoetryCategoryRepository extends BaseMapper<PoetryCategory> {
}
