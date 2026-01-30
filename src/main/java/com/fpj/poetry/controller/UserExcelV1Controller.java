package com.fpj.poetry.controller;

import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.fpj.poetry.domain.User;
import com.fpj.poetry.domain.UserExcelV1;
import com.fpj.poetry.service.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.Parameters;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * @author fangpengjun
 * @date 2025/3/30
 */
@RestController
@Slf4j
@Tag(name = "用户模块ExcelV1", description = "用户模块ExcelV1")
@RequestMapping("/v1")
public class UserExcelV1Controller {


    @GetMapping("/export-users")
    public void exportUserExcel(HttpServletResponse response) throws IOException {
        // 1. 获取数据
        List<UserExcelV1> userList = getMockUserData();

        // 2. 创建ExcelWriter
        ExcelWriter writer = ExcelUtil.getWriter(true);

        // 3. 直接写入数据，Hutool会自动识别@Alias注解
        writer.write(userList, true);
        writer.renameSheet("用户信息");



        // 4. 配置响应
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName = URLEncoder.encode("用户信息表", "UTF-8") + ".xlsx";
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName);

        // 5. 输出到响应流
        writer.flush(response.getOutputStream());
        writer.close();
    }

    private List<UserExcelV1> getMockUserData() {
        List<UserExcelV1> users = new ArrayList<>();
        users.add(new UserExcelV1(1, "张三", 25, "zhangsan@example.com", "技术部"));
        users.add(new UserExcelV1(2, "李四", 30, "lisi@example.com", "市场部"));
        return users;
    }
}