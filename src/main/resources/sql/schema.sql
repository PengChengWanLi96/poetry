-- 诗词分类表
CREATE TABLE IF NOT EXISTS poetry_category (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '主键ID',
    name VARCHAR(50) NOT NULL COMMENT '分类名称',
    code VARCHAR(50) NOT NULL UNIQUE COMMENT '分类编码',
    description VARCHAR(500) COMMENT '分类描述',
    table_name VARCHAR(50) COMMENT '物理分表名',
    sort_order INT DEFAULT 0 COMMENT '排序',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    deleted_at DATETIME DEFAULT NULL COMMENT '删除时间',
    INDEX idx_code (code),
    INDEX idx_sort_order (sort_order)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='诗词分类表';

-- 诗词基础表（所有分类通用字段）
CREATE TABLE IF NOT EXISTS poetry (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '主键ID',
    category_id BIGINT NOT NULL COMMENT '分类ID',
    title VARCHAR(255) NOT NULL COMMENT '标题',
    author VARCHAR(100) COMMENT '作者',
    content TEXT COMMENT '正文（多行用换行符分隔）',
    rhythmic VARCHAR(100) COMMENT '词牌名（宋词专用）',
    tags VARCHAR(1000) COMMENT '标签（JSON数组存储）',
    origin_id VARCHAR(100) COMMENT '原始数据ID',
    dynasty VARCHAR(20) COMMENT '朝代',
    view_count INT DEFAULT 0 COMMENT '浏览次数',
    is_featured TINYINT DEFAULT 0 COMMENT '是否推荐(0-否,1-是)',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    deleted_at DATETIME DEFAULT NULL COMMENT '删除时间',
    INDEX idx_category_id (category_id),
    INDEX idx_author (author),
    INDEX idx_title (title),
    INDEX idx_dynasty (dynasty),
    INDEX idx_is_featured (is_featured),
    INDEX idx_view_count (view_count),
    FULLTEXT INDEX ft_poetry (title, author, content)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='诗词基础表';

-- 诗词扩展表（存储各分类特定字段）
CREATE TABLE IF NOT EXISTS poetry_ext (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '主键ID',
    poetry_id BIGINT NOT NULL COMMENT '诗词ID',
    category_id BIGINT NOT NULL COMMENT '分类ID',
    chapter VARCHAR(100) COMMENT '章节（诗经、论语等）',
    `section` VARCHAR(100) COMMENT '篇目/部分',
    prologue TEXT COMMENT '序言/注释',
    ext_fields JSON COMMENT '扩展字段',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    INDEX idx_poetry_id (poetry_id),
    INDEX idx_category_id (category_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='诗词扩展表';

-- 推荐诗词视图（便于首页展示）
CREATE OR REPLACE VIEW v_poetry_featured AS
SELECT p.*, c.name as category_name, c.code as category_code
FROM poetry p
LEFT JOIN poetry_category c ON p.category_id = c.id
WHERE p.is_featured = 1 AND p.deleted_at IS NULL;

-- 分类统计视图
CREATE OR REPLACE VIEW v_category_stats AS
SELECT 
    c.id,
    c.name,
    c.code,
    COUNT(p.id) as poetry_count,
    MAX(p.created_at) as latest_created
FROM poetry_category c
LEFT JOIN poetry p ON c.id = p.category_id AND p.deleted_at IS NULL
WHERE c.deleted_at IS NULL
GROUP BY c.id, c.name, c.code;
