package com.slx.server.config.security;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.slx.server.pojo.RespBean;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 访问接口时，自定义没有权限的返回结果
 * @author Slxin
 */
@Component
public class RestAccessDeniedHandler implements AccessDeniedHandler {
    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException e) throws IOException, ServletException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        response.setStatus(403);
        RespBean bean = RespBean.error(403,"权限不足",null);
        PrintWriter outWriter = response.getWriter();
        outWriter.write(new ObjectMapper().writeValueAsString(bean));
        outWriter.flush();
        outWriter.close();

    }
}
