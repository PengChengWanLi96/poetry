package com.fpj.poetry.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDateTime;
import lombok.Data;

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
