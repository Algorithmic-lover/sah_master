package com.slx.server.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 跨越配置
 * @author Slxin
 */
@Configuration
public class CorsConfig implements WebMvcConfigurer {
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                //配置需要跨域的地址,如果要携带cookie,不能写*，*：代表所有域名都可以跨域访问
                .allowedOrigins("*")
                //配置所要携带的请求方法，*代表所有的请求的方法：Get put post delete
                .allowedMethods("GET", "PUT", "DELETE", "POST", "OPTIONS")
                //配置是否允许带cookie
                .allowCredentials(false);
                //放行全部原始头信息
                //.allowedHeaders("*");
    }
}
