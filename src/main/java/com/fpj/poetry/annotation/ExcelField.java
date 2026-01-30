package com.fpj.poetry.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @author fangpengjun
 * @date 2026/1/29
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface ExcelField {
    // 表头名称
    String value();

    // 排序（可选）
    int order() default 0;

    // 值替换规则，格式："原始值=显示值"，如："0=男,1=女"
    String replace() default "";
}
