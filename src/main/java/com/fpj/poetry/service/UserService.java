package com.fpj.poetry.service;

import com.fpj.poetry.domain.User;
import com.fpj.poetry.repository.UserRepository;
import java.util.List;
import org.springframework.data.elasticsearch.client.elc.NativeQueryBuilder;
import org.springframework.data.elasticsearch.core.ElasticsearchOperations;
import org.springframework.data.elasticsearch.core.RefreshPolicy;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final ElasticsearchOperations elasticsearchOperations;

    public UserService(UserRepository userRepository, ElasticsearchOperations elasticsearchOperations) {
        this.userRepository = userRepository;
        this.elasticsearchOperations = elasticsearchOperations;
    }

    // 创建用户
    public String createUser(User user) {
        return userRepository.save(user).getId();
    }

    public Boolean deleteUserById(String id) {
        userRepository.deleteById(id, RefreshPolicy.IMMEDIATE);
        return Boolean.TRUE;
    }

    public Boolean deleteAllUsers() {
        userRepository.deleteAll(RefreshPolicy.IMMEDIATE);
        return Boolean.TRUE;
    }

    // 根据邮箱查询
    public List<User> getByEmail(String email) {
        return userRepository.findByEmail(email);
    }



    // 复杂查询：根据地址关键词搜索
    public List<User> searchByAddress(String addressKeyword) {
        var query = new NativeQueryBuilder()
                .withQuery(q -> q
                        .match(m -> m
                                .field("address")
                                .query(addressKeyword)
                        )
                )
                .build();

        return elasticsearchOperations.search(query, User.class)
                .stream()
                .map(hit -> hit.getContent())
                .toList();
    }
}