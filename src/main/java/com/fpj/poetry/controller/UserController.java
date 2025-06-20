package com.fpj.poetry.controller;

import com.fpj.poetry.domain.User;
import com.fpj.poetry.service.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.Parameters;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import java.util.List;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author fangpengjun
 * @date 2025/3/30
 */
@RestController
@Slf4j
@Tag(name = "用户模块", description = "用户模块接口")
public class UserController {

    @Resource
    private UserService userService;

    @PostMapping
    @Operation(summary = "创建用户", description = "创建一个新用户")
    public String createUser(@Validated @RequestBody User user) {
        return userService.createUser(user);
    }

    @GetMapping("/users")
    @Operation(summary = "用户列表", description = "返回用户列表消息")
    @Parameters({@Parameter(name = "page", description = "当前页", required = false),
            @Parameter(name = "size", description = "每页条数", required = false),
            @Parameter(name = "name", description = "名称", required = false),
            @Parameter(name = "nickname", description = "昵称", required = false),
            @Parameter(name = "address", description = "地址", required = false)})
    public List<User> getUserList(User user) {
        return userService.getUserList(user);
    }

    @GetMapping("/{id}")
    @Operation(summary = "根据ID获取用户", description = "通过用户ID获取详细信息")
    public User getUserById(
            @Parameter(description = "用户ID", required = true, example = "u123")
            @PathVariable String id) {
        return userService.getById(id);
    }

    @DeleteMapping("/{id}")
    @Operation(summary = "根据ID删除用户", description = "通过用户ID删除用户")
    public Boolean deleteUserById(
            @Parameter(description = "用户ID", required = true, example = "u123")
            @PathVariable String id) {
        return userService.deleteUserById(id);
    }
}