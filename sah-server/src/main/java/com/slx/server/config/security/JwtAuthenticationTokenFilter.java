package com.slx.server.config.security;

import org.apache.ibatis.parsing.TokenHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.util.StringUtils;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * jwt登录授权过滤器
 * @author Slxin
 */

public class JwtAuthenticationTokenFilter extends OncePerRequestFilter {

    @Value("${jwt.tokenHeader}")
    private String tokenHeadler;
    @Value("${jwt.tokenHead}")
    private String tokenHead;
    @Autowired
    private JwtTokenUtil jwtTokenUtil;
    @Autowired
    private UserDetailsService userDetailsService;
    /**
     * 前置拦截
     * @param httpServletRequest
     * @param httpServletResponse
     * @param filterChain
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doFilterInternal(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
                                    FilterChain filterChain) throws ServletException, IOException {
        String authHeader = httpServletRequest.getHeader(tokenHeadler); //通过key拿到value
        //判断tokenHeader(authHeader)是否存在及是否以Bearer开头
        if(StringUtils.hasLength(authHeader)&&authHeader.startsWith(tokenHead)){
            //字符串截取
            String authToken = authHeader.substring(tokenHead.length());
            String userName = jwtTokenUtil.getUserNameFromToken(authToken);
            //token存在，但security全局没有用户对象，（没登录则登录）
            if (StringUtils.hasLength(authToken) && SecurityContextHolder.getContext().getAuthentication()==null){
                //登录
                UserDetails userDetails = userDetailsService.loadUserByUsername(userName);
                //验证登录是否有效，重新设置到用户对象
                if(jwtTokenUtil.validateToken(authToken,userDetails)){
                    UsernamePasswordAuthenticationToken authenticationToken =
                            new UsernamePasswordAuthenticationToken(userDetails,null,userDetails.getAuthorities());
                    authenticationToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(httpServletRequest));
                    SecurityContextHolder.getContext().setAuthentication(authenticationToken);
                }
            }
        }
        filterChain.doFilter(httpServletRequest,httpServletResponse); //放行
    }
}
