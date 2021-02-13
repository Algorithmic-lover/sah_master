package com.slx.server;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 *启动类
 * @author Slxin
 */
@SpringBootApplication
@MapperScan("com.slx.server.mapper")
public class SahApplication {
    public static void main(String[] args) {
        SpringApplication.run(SahApplication.class, args);
    }
}
