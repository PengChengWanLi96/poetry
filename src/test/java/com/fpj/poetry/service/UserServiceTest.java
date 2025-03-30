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
        List<User> results = userService.getByEmail("zhangsan@example.com");
        assertEquals(1, results.size());
        assertEquals("北京市海淀区", results.get(0).getAddress());
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
}