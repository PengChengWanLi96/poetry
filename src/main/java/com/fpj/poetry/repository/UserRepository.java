package com.fpj.poetry.repository;

import com.fpj.poetry.domain.User;
import java.util.List;
import org.springframework.data.elasticsearch.core.RefreshPolicy;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

/**
 * @author fangpengjun
 * @date 2025/3/30
 */
@Repository
public interface UserRepository extends ElasticsearchRepository<User, String> {
    List<User> findByEmail(String email);
    List<User> findByPhone(String phone);
    List<User> findByNameContaining(String namePart);
}