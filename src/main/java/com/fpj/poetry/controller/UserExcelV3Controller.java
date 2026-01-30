package com.fpj.poetry.controller;

import com.fpj.poetry.domain.UserExcelV2;
import com.fpj.poetry.utils.excel.ExcelExportCommonUtils;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author fangpengjun
 * @date 2025/3/30
 */
@RestController
@Slf4j
@RequestMapping("/v3")
@Tag(name = "用户模块ExcelV3", description = "用户模块ExcelV3")
public class UserExcelV3Controller {

    @GetMapping("/export-users")
    public void exportSimple(HttpServletResponse response) throws IOException {
        List<UserExcelV2> userList = getMockUserData();
        ExcelExportCommonUtils.export(userList, UserExcelV2.class, "用户信息表", response);
    }

    private List<UserExcelV2> getMockUserData() {
        List<UserExcelV2> users = new ArrayList<>();

        users.add(new UserExcelV2(1, "张三", 25, "zhangsan@example.com", "技术部", 1));
        users.add(new UserExcelV2(2, "李四", 30, "lisi@example.com", "市场部", 1));
        return users;
    }
}