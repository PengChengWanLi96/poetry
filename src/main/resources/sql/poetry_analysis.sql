-- AI诗词分析表
-- 用于存储每首诗词的AI分析结果
-- 创建时间: 2025-03-30

CREATE TABLE IF NOT EXISTS `poetry_analysis` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
    `poetry_id` bigint(20) NOT NULL COMMENT '诗词ID',
    `dynasty_analysis` text COMMENT '朝代背景分析',
    `author_analysis` text COMMENT '作者背景分析',
    `background_analysis` text COMMENT '诗词创作背景分析',
    `content_analysis` text COMMENT '诗词大意分析',
    `artistic_analysis` text COMMENT '艺术手法分析',
    `full_analysis` text COMMENT '完整分析内容（JSON格式）',
    `ai_model` varchar(50) DEFAULT NULL COMMENT '使用的AI模型',
    `ai_version` varchar(50) DEFAULT NULL COMMENT 'AI模型版本',
    `generate_time` int(11) DEFAULT '0' COMMENT '生成耗时(毫秒)',
    `status` tinyint(1) DEFAULT '1' COMMENT '状态: 0-生成中, 1-已完成, 2-失败',
    `error_msg` varchar(500) DEFAULT NULL COMMENT '错误信息',
    `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY `idx_status` (`status`),
    KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AI诗词分析表';

-- 添加外键约束（可选，根据业务需求决定是否添加）
-- ALTER TABLE `poetry_analysis` 
-- ADD CONSTRAINT `fk_poetry_analysis_poetry` 
-- FOREIGN KEY (`poetry_id`) REFERENCES `poetry` (`id`) 
-- ON DELETE CASCADE ON UPDATE CASCADE;