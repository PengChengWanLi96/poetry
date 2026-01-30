package com.fpj.poetry.controller;

import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.fpj.poetry.domain.User;
import com.fpj.poetry.domain.UserExcelV1;
import com.fpj.poetry.domain.UserExcelV2;
import com.fpj.poetry.service.UserService;
import com.fpj.poetry.utils.excel.ExcelAnnotationUtil;
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
@RequestMapping("/v2")
@Tag(name = "用户模块ExcelV2", description = "用户模块ExcelV2")
public class UserExcelV2Controller {

    @GetMapping("/export-users")
    public void exportUserExcelWithAnnotation(HttpServletResponse response) throws IOException {
        List<UserExcelV2> userList = getMockUserData();
        ExcelWriter writer = ExcelUtil.getWriter(true);

        // 使用注解处理器设置表头
        ExcelAnnotationUtil.setHeaderByAnnotation(writer, UserExcelV2.class);

        // 写入数据
        writer.write(userList, true);
        writer.renameSheet("用户信息");

        // 响应配置
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName = URLEncoder.encode("用户信息表", "UTF-8") + ".xlsx";
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName);

        writer.flush(response.getOutputStream());
        writer.close();
    }

    private List<UserExcelV2> getMockUserData() {
        List<UserExcelV2> users = new ArrayList<>();

        users.add(new UserExcelV2(1, "张三", 25, "zhangsan@example.com", "技术部", 1));
        users.add(new UserExcelV2(2, "李四", 30, "lisi@example.com", "市场部", 1));
        return users;
    }
}