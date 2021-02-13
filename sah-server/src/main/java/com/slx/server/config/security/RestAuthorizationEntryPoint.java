package com.slx.server.config.security;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.slx.server.pojo.RespBean;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.codec.Utf8;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *访问接口时，未登录或token失效时，自定义返回结果
 * @author Slxin
 */
@Component
public class RestAuthorizationEntryPoint implements AuthenticationEntryPoint {
    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException e) throws IOException, ServletException {
        response.setCharacterEncoding("Utf-8");
        response.setContentType("application/json"); //json格式
        response.setStatus(401);
        RespBean bean = RespBean.error(401,"尚未登录，请登录",null);
        PrintWriter outWriter = response.getWriter();//输出流
        outWriter.write(new ObjectMapper().writeValueAsString(bean));//输出数据
        outWriter.flush();
        outWriter.close();
    }

}
