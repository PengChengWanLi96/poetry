package com.fpj.poetry.utils.excel;

import cn.hutool.core.annotation.Alias;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.fpj.poetry.annotation.ExcelField;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.List;
import org.springframework.http.HttpHeaders;

/**
 * @author fangpengjun
 * @date 2026/1/30
 */
public class ExcelExportCommonUtils {

    /**
     * 通用Excel导出方法
     */
    public static <T> void export(List<T> data, Class<T> clazz,
                                  String fileName, HttpServletResponse response) throws IOException {
        ExcelWriter writer = ExcelUtil.getWriter(true);

        // 自动处理注解
        if (hasExcelAnnotation(clazz)) {
            processExcelAnnotations(writer, clazz);
        }

        writer.write(data, true);
        writer.renameSheet(fileName);

        // 设置响应头
        setupResponse(response, fileName);

        writer.flush(response.getOutputStream());
        writer.close();
    }

    private static <T> boolean hasExcelAnnotation(Class<T> clazz) {
        return Arrays.stream(clazz.getDeclaredFields())
                .anyMatch(field -> field.isAnnotationPresent(ExcelField.class) ||
                        field.isAnnotationPresent(Alias.class));
    }

    private static <T> void processExcelAnnotations(ExcelWriter writer, Class<T> clazz) {
        Arrays.stream(clazz.getDeclaredFields()).forEach(field -> {
            if (field.isAnnotationPresent(ExcelField.class)) {
                ExcelField excelField = field.getAnnotation(ExcelField.class);
                writer.addHeaderAlias(field.getName(), excelField.value());
            } else if (field.isAnnotationPresent(Alias.class)) {
                Alias alias = field.getAnnotation(Alias.class);
                writer.addHeaderAlias(field.getName(), alias.value());
            }
        });
        writer.setOnlyAlias(true);
    }

    private static void setupResponse(HttpServletResponse response, String fileName) throws IOException {
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String encodedFileName = URLEncoder.encode(fileName, "UTF-8") + ".xlsx";
        response.setHeader(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=" + encodedFileName);
    }
}
