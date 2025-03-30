package com.fpj.poetry.config;

import java.util.List;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.elasticsearch.client.ClientConfiguration;
import org.springframework.data.elasticsearch.client.elc.ElasticsearchConfiguration;

/**
 * @author fangpengjun
 * @date 2025/3/30
 */
@Configurable
public class ElasticsearchConfig extends ElasticsearchConfiguration {

    @Value("${spring.elasticsearch.uris}")
    private List<String> uris;

    @Value("${spring.elasticsearch.username}")
    private String username;

    @Value("${spring.elasticsearch.password}")
    private String password;

    @Override
    public ClientConfiguration clientConfiguration() {

        // 去除http开头
        uris = uris.stream().map(uri -> {
            if (uri.startsWith("http")) {
                uri = uri.split("://")[1];
            }
            return uri;
        }).toList();

        return ClientConfiguration.builder()
                .connectedTo(uris.toArray(new String[uris.size()]))
                // Elasticsearch 8.x 默认开启安全协议，需要配置用户名密码
                .withBasicAuth(username, password)
                .withSocketTimeout(60000)
                .build();
    }
}
