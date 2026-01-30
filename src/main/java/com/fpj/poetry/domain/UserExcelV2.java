package com.fpj.poetry.domain;

import com.fpj.poetry.annotation.ExcelField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author fangpengjun
 * @date 2026/1/29
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserExcelV2 {
    @ExcelField(value = "用户ID", order = 1)
    private Integer id;

    @ExcelField(value = "姓名", order = 2)
    private String name;

    @ExcelField(value = "年龄", order = 3)
    private Integer age;

    @ExcelField(value = "邮箱", order = 4)
    private String email;

    @ExcelField(value = "部门", order = 5)
    private String department;

    // 示例：带值替换的字段
    @ExcelField(value = "状态", replace = "1=激活,0=禁用")
    private Integer status;
}
