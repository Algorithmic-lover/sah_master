package com.slx.server.config.security;

import com.slx.server.pojo.Admin;
import com.slx.server.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

/**
 * @author Slxin
 */
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    IAdminService adminService;
    @Autowired
    RestAccessDeniedHandler restAccessDeniedHandler;
    @Autowired
    RestAuthorizationEntryPoint restAuthorizationEntryPoint;

    /**
     * 重写userDetailsService
     * @return
     */
    @Override
    @Bean
    public UserDetailsService userDetailsService(){
        //获取用户登录信息
        return username -> {
            Admin admin = adminService.getAdminByName(username);
            if (admin == null) {
                throw  new UsernameNotFoundException("账户名或密码不正确");
            }
            return admin;
        };
    }

    /**身份认证接口：
     * 因为userDetailsService的重写，在config中配置使其生效，
     * springSecurity登录时用重写的userDetails,同时设置passwordEncoder为BCrypt方式
     * @param auth
     * @throws Exception
     */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService()).passwordEncoder(passwordEncoder());
    }

    /**
     * 放行，不走拦截链
     * @param web
     * @throws Exception
     */
    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers(
                "/login", "/logout", "/css/**", "/js/**", "/index.html", "/favicon.ico",
                "/doc.html", "/webjars/**", "/swagger-resources/**", "/v2/api-docs/**","/captcha","/ws/**",
                "/hello","/captcha"
        );
    }

    /**
     * 一些拦截和访问配置
     * @param http
     * @throws Exception
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                //使用jwt,关闭csrf
                .csrf().disable()
                //基于token，不需session
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS) //无状态
                .and()
                //过滤请求，所有请求需要认证
                .authorizeRequests().anyRequest().authenticated()
                .and()
                //禁用缓存
                .headers().cacheControl();

        //添加jwt登录授权拦截器
        http.addFilterBefore(jwtAuthenticationTokenFilter(), UsernamePasswordAuthenticationFilter.class);
        //添加自定义未授权或未登录的结果返回
        http.exceptionHandling()
                //403
                .accessDeniedHandler(restAccessDeniedHandler)
                //401
               .authenticationEntryPoint(restAuthorizationEntryPoint);
    }

    /**
     * 强散列哈希加密实现
     * @return
     */
    @Bean
    public PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }

    /**
     * 将jwt拦截器添加到bean中
     * @return
     */
    @Bean
    public JwtAuthenticationTokenFilter jwtAuthenticationTokenFilter(){
        return new JwtAuthenticationTokenFilter();
    }
}

