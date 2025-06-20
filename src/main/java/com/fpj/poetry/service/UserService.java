package com.fpj.poetry.service;

import com.fpj.poetry.domain.User;
import com.fpj.poetry.repository.UserRepository;
import java.util.List;
import org.springframework.data.elasticsearch.client.elc.NativeQueryBuilder;
import org.springframework.data.elasticsearch.core.ElasticsearchOperations;
import org.springframework.data.elasticsearch.core.RefreshPolicy;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

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

    // 使用Repository根据ID查询
    public User getById(String id) {
        return userRepository.findById(id).orElse(null);
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

    public List<User> getUserList(User user) {
        // 构建动态查询
        var query = new NativeQueryBuilder()
                .withQuery(q -> q
                        .bool(b -> {
                            if (user == null) {
                                return b;
                            }
                            // 动态添加各个字段的匹配条件
                            if (StringUtils.hasText(user.getName())) {
                                b.must(m -> m.match(mt -> mt
                                        .field("name")
                                        .query(user.getName())
                                ));
                            }
                            if (StringUtils.hasText(user.getNickname())) {
                                b.must(m -> m.match(mt -> mt
                                        .field("nickname")
                                        .query(user.getNickname())
                                ));
                            }
                            if (StringUtils.hasText(user.getAddress())) {
                                b.must(m -> m.match(mt -> mt
                                        .field("address")
                                        .query(user.getAddress())
                                ));
                            }
                            if (StringUtils.hasText(user.getEmail())) {
                                b.must(m -> m.match(mt -> mt
                                        .field("email")
                                        .query(user.getEmail())
                                ));
                            }
                            if (StringUtils.hasText(user.getPhone())) {
                                b.must(m -> m.match(mt -> mt
                                        .field("phone")
                                        .query(user.getPhone())
                                ));
                            }
                            return b;
                        })
                )
                .build();

        return elasticsearchOperations.search(query, User.class)
                .stream()
                .map(hit -> hit.getContent())
                .toList();
    }
}