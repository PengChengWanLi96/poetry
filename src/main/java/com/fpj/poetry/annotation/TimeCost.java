package com.fpj.poetry.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.concurrent.TimeUnit;

/**
 * 接口耗时记录注解
 * @author fangpengjun
 * @date 2026/3/2
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface TimeCost {
    String value() default "";
    TimeUnit unit() default TimeUnit.MILLISECONDS;
}
