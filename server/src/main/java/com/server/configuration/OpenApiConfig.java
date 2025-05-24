package com.server.configuration;

import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.OpenAPI;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class OpenApiConfig {
    @Bean
    public OpenAPI customOpenAPI() {
        return new OpenAPI()
            .info(new Info()
                .title("Demo API")
                .version("1.0.0")
                .description("API documentation with springdoc-openapi")
                .contact(new Contact().name("Larry Le").email("larrylenw@gmail.com").url("https://facebook.com")));
    }
}
