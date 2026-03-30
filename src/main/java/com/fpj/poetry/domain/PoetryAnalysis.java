package com.fpj.poetry.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;
import lombok.Data;

/**
 * AI诗词分析实体类
 * 存储每首诗词的AI分析结果
 * 
 * @author AI Assistant
 * @since 2025-03-30
 */
@Data
@TableName("poetry_analysis")
public class PoetryAnalysis implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键ID
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 诗词ID
     */
    private Long poetryId;

    /**
     * 朝代背景分析
     */
    private String dynastyAnalysis;

    /**
     * 作者背景分析
     */
    private String authorAnalysis;

    /**
     * 诗词创作背景分析
     */
    private String backgroundAnalysis;

    /**
     * 诗词大意分析
     */
    private String contentAnalysis;

    /**
     * 艺术手法分析
     */
    private String artisticAnalysis;

    /**
     * 完整分析内容（JSON格式存储）
     */
    private String fullAnalysis;

    /**
     * 使用的AI模型
     */
    private String aiModel;

    /**
     * AI模型版本
     */
    private String aiVersion;

    /**
     * 生成耗时(毫秒)
     */
    private Integer generateTime;

    /**
     * 状态: 0-生成中, 1-已完成, 2-失败
     */
    private Integer status;

    /**
     * 错误信息
     */
    private String errorMsg;

    /**
     * 创建时间
     */
    private LocalDateTime createdAt;

    /**
     * 更新时间
     */
    private LocalDateTime updatedAt;

    /**
     * 关联的诗词对象（非数据库字段）
     */
    @TableField(exist = false)
    private Poetry poetry;

    /**
     * 状态枚举
     */
    public enum Status {
        GENERATING(0, "生成中"),
        COMPLETED(1, "已完成"),
        FAILED(2, "失败");

        private final int code;
        private final String desc;

        Status(int code, String desc) {
            this.code = code;
            this.desc = desc;
        }

        public int getCode() {
            return code;
        }

        public String getDesc() {
            return desc;
        }
    }
}