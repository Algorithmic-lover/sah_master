package com.slx.server.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.*;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spi.service.contexts.SecurityContext;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.ArrayList;
import java.util.List;

/**
 * swagger配置类
 * @author Slxin
 */
@Configuration
@EnableSwagger2
public class Swagger2Config {

    /**
     * docket指定哪些包生成swagger文档
     * @return
     */
    @Bean
    public Docket createRestApi(){
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.slx.server.controller"))
                .paths(PathSelectors.any())
                .build()
                .securityContexts(securityContexts())
                .securitySchemes(securitySchemes());
    }

    private ApiInfo apiInfo(){
        return new ApiInfoBuilder()
                .title("sah后端接口文档")
                .description("sah后端接口文档")
                .contact(new Contact("slx", "http:localhost:8181/doc.html", "slx@sxl.com"))
                .version("1.0")
                .build();
    }

    private List<ApiKey> securitySchemes(){
        //设置请求头
        List<ApiKey> result= new ArrayList<>();
        ApiKey apiKey = new ApiKey("Authorization","Authorization","Header  ");
        result.add(apiKey);
        return result;
    }

    private List<SecurityContext> securityContexts(){
        List<SecurityContext> result = new ArrayList<>();
        result.add(getContextByPath("/hello/.*"));
        return result;
    }

    private SecurityContext getContextByPath(String pathRegex /*正则匹配*/){
        return SecurityContext.builder()
                .securityReferences(defaultAuth())
                .forPaths(PathSelectors.regex(pathRegex))
                .build();
    }

    private List<SecurityReference> defaultAuth() {
        List<SecurityReference> result = new ArrayList<>();
        //授权范围
        AuthorizationScope authorizationScope = new AuthorizationScope("global","accessEverything");
        AuthorizationScope[] authorizationScopes= new AuthorizationScope[1];
        authorizationScopes[0] = authorizationScope;
        result.add(new SecurityReference("Authorization", authorizationScopes));
        return result;
    }


}
