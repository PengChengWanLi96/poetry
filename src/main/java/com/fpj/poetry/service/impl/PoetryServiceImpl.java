package com.fpj.poetry.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.fpj.poetry.common.PageResult;
import com.fpj.poetry.domain.Poetry;
import com.fpj.poetry.repository.PoetryRepository;
import com.fpj.poetry.service.PoetryService;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
public class PoetryServiceImpl extends ServiceImpl<PoetryRepository, Poetry> implements PoetryService {

    @Override
    public PageResult<Poetry> getPoetryList(Long categoryId, String keyword, Integer page, Integer size) {
        IPage<Poetry> result = getPoetryPage(categoryId, keyword, page, size);
        
        return new PageResult<>(
            result.getTotal(),
            result.getRecords(),
            result.getCurrent(),
            result.getSize()
        );
    }

    @Override
    public IPage<Poetry> getPoetryPage(Long categoryId, String keyword, Integer page, Integer size) {
        int currentPage = (page != null && page > 0) ? page : 1;
        int pageSize = (size != null && size > 0) ? size : 10;
        Page<Poetry> pageParam = new Page<>(currentPage, pageSize);
        
        LambdaQueryWrapper<Poetry> wrapper = new LambdaQueryWrapper<>();
        
        if (categoryId != null && categoryId > 0) {
            wrapper.eq(Poetry::getCategoryId, categoryId);
        }
        
        if (StringUtils.hasText(keyword)) {
            wrapper.and(w -> w
                .like(Poetry::getTitle, keyword)
                .or()
                .like(Poetry::getAuthor, keyword)
                .or()
                .like(Poetry::getContent, keyword)
            );
        }
        
        wrapper.orderByDesc(Poetry::getViewCount);
        
        return this.page(pageParam, wrapper);
    }

    @Override
    public Poetry getPoetryById(Long id) {
        Poetry poetry = this.getById(id);
        if (poetry != null) {
            this.lambdaUpdate()
                .setSql("view_count = view_count + 1")
                .eq(Poetry::getId, id)
                .update();
        }
        return poetry;
    }

    @Override
    public PageResult<Poetry> getFeaturedPoetry(Integer page, Integer size) {
        Page<Poetry> pageParam = new Page<>(page, size);
        
        LambdaQueryWrapper<Poetry> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Poetry::getIsFeatured, 1)
               .orderByDesc(Poetry::getViewCount);
        
        IPage<Poetry> result = this.page(pageParam, wrapper);
        
        return new PageResult<>(
            result.getTotal(),
            result.getRecords(),
            result.getCurrent(),
            result.getSize()
        );
    }

    @Override
    public PageResult<Poetry> searchPoetry(String keyword, Integer page, Integer size) {
        return getPoetryList(null, keyword, page, size);
    }
}
