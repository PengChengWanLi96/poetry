package com.fpj.poetry.service;

import com.fpj.poetry.domain.User;
import jakarta.annotation.Resource;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest
class UserServiceTest {

    @Resource
    private UserService userService;

    @Test
    void createUser() {
        User user = new User(
                "张三",
                "老张",
                "123456",
                "北京市海淀区",
                "zhangsan@example.com",
                "13800138000"
        );

        String userId = userService.createUser(user);
        assertNotNull(userId);

        // 验证邮箱查询
        User user1 = userService.getById(userId);
        assertEquals(1, user1 != null ? 1: 0);
        assertEquals("张三", user1.getName());
        System.out.printf("", user1);
    }

    @Test
    void getAllUsers() {
        List<User> userList = userService.getUserList(null);
        userList.forEach(System.out::println);
    }

    

    @Test
    void getByEmail() {
    }

    @Test
    void searchByAddress() {
    }

    @Test
    void deleteAllUsers() {
        Boolean deleted = userService.deleteAllUsers();
    }

    @Test
    void deleteUserById() {
        User user = new User(
                "删除用户测试",
                "删除用户测试",
                "123456",
                "北京市海淀区",
                "zhangsan@example.com",
                "13800138000"
        );

        String userId = userService.createUser(user);
        assertNotNull(userId);
        Boolean deleted = userService.deleteUserById(userId);
        assertEquals(deleted, Boolean.TRUE);
    }
}