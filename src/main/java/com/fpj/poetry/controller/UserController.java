package com.fpj.poetry.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import java.util.Arrays;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author fangpengjun
 * @date 2025/3/30
 */
@RestController
@Slf4j
@Tag(name = "用户模块", description = "用户模块接口")
public class UserController {

    private com.fpj.poetry.service.UserService userService;

    @GetMapping("/users")
    @Operation(summary = "用户列表", description = "返回用户列表消息")
    public Object getUserList() {
        return Arrays.asList("666");
    }
}