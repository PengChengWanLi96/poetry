package com.fpj.poetry.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDateTime;

@Data
@TableName("poetry")
public class Poetry implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private Long categoryId;

    private String title;

    private String author;

    private String content;

    private String rhythmic;

    private String tags;

    private String originId;

    private String dynasty;

    private Integer viewCount;

    private Integer isFeatured;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    private LocalDateTime deletedAt;

    @TableField(exist = false)
    private PoetryCategory category;

    @TableField(exist = false)
    private PoetryExt ext;
}
