package com.fpj.poetry.repository;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.fpj.poetry.domain.Poetry;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PoetryRepository extends BaseMapper<Poetry> {
}
