package com.fpj.poetry.domain;

import cn.hutool.core.annotation.Alias;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author fangpengjun
 * @date 2026/1/29
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserExcelV1 {

    @Alias("用户ID")
    private Integer id;

    @Alias("姓名")
    private String name;

    @Alias("年龄")
    private Integer age;

    @Alias("邮箱")
    private String email;

    @Alias("部门")
    private String department;
}
