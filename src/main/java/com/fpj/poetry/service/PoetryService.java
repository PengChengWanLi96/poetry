package com.fpj.poetry.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.fpj.poetry.common.PageResult;
import com.fpj.poetry.domain.Poetry;

public interface PoetryService extends IService<Poetry> {

    PageResult<Poetry> getPoetryList(Long categoryId, String keyword, Integer page, Integer size);

    Poetry getPoetryById(Long id);

    PageResult<Poetry> getFeaturedPoetry(Integer page, Integer size);

    PageResult<Poetry> searchPoetry(String keyword, Integer page, Integer size);

    IPage<Poetry> getPoetryPage(Long categoryId, String keyword, Integer page, Integer size);
}
