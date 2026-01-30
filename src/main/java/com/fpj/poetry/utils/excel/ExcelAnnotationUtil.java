package com.fpj.poetry.utils.excel;

import cn.hutool.poi.excel.ExcelWriter;
import com.fpj.poetry.annotation.ExcelField;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public class ExcelAnnotationUtil {

    /**
     * 基于注解设置表头别名
     */
    public static void setHeaderByAnnotation(ExcelWriter writer, Class<?> clazz) {
        // 获取所有字段并按order排序
        List<Field> fields = Arrays.stream(clazz.getDeclaredFields())
                .filter(field -> field.isAnnotationPresent(ExcelField.class))
                .sorted(Comparator.comparingInt(f ->
                        f.getAnnotation(ExcelField.class).order()))
                .collect(Collectors.toList());

        // 设置表头别名
        for (Field field : fields) {
            ExcelField excelField = field.getAnnotation(ExcelField.class);
            writer.addHeaderAlias(field.getName(), excelField.value());
        }

        writer.setOnlyAlias(true); // 只显示有别名的字段
    }

    /**
     * 处理值替换
     */
    public static Object processFieldValue(Object value, ExcelField excelField) {
        if (value == null || excelField.replace().isEmpty()) {
            return value;
        }

        String replaceRule = excelField.replace();
        String[] rules = replaceRule.split(",");

        for (String rule : rules) {
            String[] keyValue = rule.split("=");
            if (keyValue.length == 2 && value.toString().equals(keyValue[0])) {
                return keyValue[1];
            }
        }

        return value;
    }
}