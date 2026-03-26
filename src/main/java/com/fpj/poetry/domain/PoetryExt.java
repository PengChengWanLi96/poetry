package com.fpj.poetry.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDateTime;

@Data
@TableName("poetry_ext")
public class PoetryExt implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private Long poetryId;

    private Long categoryId;

    private String chapter;

    private String section;

    private String prologue;

    private String extFields;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;
}
