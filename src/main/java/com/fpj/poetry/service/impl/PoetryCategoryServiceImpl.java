package com.fpj.poetry.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.fpj.poetry.domain.Poetry;
import com.fpj.poetry.domain.PoetryCategory;
import com.fpj.poetry.repository.PoetryCategoryRepository;
import com.fpj.poetry.repository.PoetryRepository;
import com.fpj.poetry.service.PoetryCategoryService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;

@Service
public class PoetryCategoryServiceImpl extends ServiceImpl<PoetryCategoryRepository, PoetryCategory> implements PoetryCategoryService {

    private final PoetryRepository poetryRepository;

    public PoetryCategoryServiceImpl(PoetryRepository poetryRepository) {
        this.poetryRepository = poetryRepository;
    }

    @Override
    public List<PoetryCategory> getAllCategories() {
        return this.lambdaQuery()
            .orderByAsc(PoetryCategory::getSortOrder)
            .list();
    }

    @Override
    public PoetryCategory getCategoryByCode(String code) {
        return this.lambdaQuery()
            .eq(PoetryCategory::getCode, code)
            .one();
    }

    @Override
    public List<Map<String, Object>> getCategoryStats() {
        List<PoetryCategory> categories = this.lambdaQuery()
            .orderByAsc(PoetryCategory::getSortOrder)
            .list();
        
        return categories.stream().map(cat -> {
            Map<String, Object> stat = new HashMap<>();
            stat.put("id", cat.getId());
            stat.put("name", cat.getName());
            stat.put("code", cat.getCode());
            stat.put("description", cat.getDescription());
            
            Long count = poetryRepository.selectCount(
                new LambdaQueryWrapper<Poetry>()
                    .eq(Poetry::getCategoryId, cat.getId())
            );
            stat.put("poetryCount", count);
            return stat;
        }).toList();
    }
}
