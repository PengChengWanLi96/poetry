-- 迁移脚本：将 deleted_at 从 DATETIME 改为 TINYINT
-- 注意：执行前请备份数据库

-- 修改 poetry 表
ALTER TABLE poetry MODIFY COLUMN deleted_at TINYINT DEFAULT 0 COMMENT '删除标记(0-未删除,1-已删除)';

-- 修改 poetry_category 表
ALTER TABLE poetry_category MODIFY COLUMN deleted_at TINYINT DEFAULT 0 COMMENT '删除标记(0-未删除,1-已删除)';

-- 修改 poetry_ext 表
ALTER TABLE poetry_ext MODIFY COLUMN deleted_at TINYINT DEFAULT 0 COMMENT '删除标记(0-未删除,1-已删除)';
