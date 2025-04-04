package com.fpj.poetry.config;

import com.fpj.poetry.utils.IPUtil;
import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.models.Components;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.security.SecurityRequirement;
import io.swagger.v3.oas.models.security.SecurityScheme;
import jakarta.annotation.PostConstruct;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author fangpengjun
 * @date 2025/3/30
 */
@Configuration
@OpenAPIDefinition(info = @Info(
        title = "API 文档",
        version = "1.0",
        description = "Spring Boot 3.x 集成 OpenAPI 示例"
))
//@Slf4j
public class OpenApiConfig {

    private static final Logger log = LoggerFactory.getLogger(OpenApiConfig.class);

    @Value("${server.port}")
    private String port;

    @PostConstruct
    public void printSwagger(){
        String serverIp = IPUtil.getServerIP();
        String swaggerUrl = String.format("http://%s:%s/swagger-ui.html", serverIp, port);
        String openApiUrl = String.format("http://%s:%s/v3/api-docs", serverIp, port);
        String knife4jUrl = String.format("http://%s:%s/doc.html", serverIp, port);
        log.info("swagger doc url: {}", swaggerUrl);
        log.info("openAPI doc url: {}", openApiUrl);
        log.info("knife4j doc url: {}", knife4jUrl);
    }

    // 自定义安全方案（如 JWT）
    @Bean
    public OpenAPI customOpenAPI() {
        return new OpenAPI()
                .components(new Components()
                        .addSecuritySchemes("BearerAuth", new SecurityScheme()
                                .type(SecurityScheme.Type.HTTP)
                                .scheme("bearer")
                                .bearerFormat("JWT")
                        )
                )
                .addSecurityItem(new SecurityRequirement().addList("BearerAuth"));
    }
}