package com.fpj.poetry.domain;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

/**
 * @author fangpengjun
 * @date 2025/3/30
 */
@Data
@Document(indexName = "users", createIndex = true)
public class User {
    @Id
    private String id;

    @Field(type = FieldType.Text)
    private String name;

    @Field(type = FieldType.Keyword)
    private String nickname;

    @Field(type = FieldType.Keyword) // 密码建议存储为关键字（实际应用需加密）
    private String password;

    @Field(type = FieldType.Text)
    private String address;

    @Field(type = FieldType.Keyword) // 邮箱按精确值存储
    private String email;

    @Field(type = FieldType.Keyword) // 电话按精确值存储
    private String phone;

    // 省略 Constructor/Getter/Setter
    public User() {}

    public User(String name, String nickname, String password, String address, String email, String phone) {
        this.name = name;
        this.nickname = nickname;
        this.password = password;
        this.address = address;
        this.email = email;
        this.phone = phone;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}