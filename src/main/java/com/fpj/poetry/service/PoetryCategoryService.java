package com.fpj.poetry.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.fpj.poetry.domain.PoetryCategory;

import java.util.List;
import java.util.Map;

public interface PoetryCategoryService extends IService<PoetryCategory> {

    List<PoetryCategory> getAllCategories();

    PoetryCategory getCategoryByCode(String code);

    List<Map<String, Object>> getCategoryStats();
}
