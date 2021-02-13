package com.slx.server.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.slx.server.config.security.JwtTokenUtil;
import com.slx.server.pojo.Admin;
import com.slx.server.mapper.AdminMapper;
import com.slx.server.pojo.RespBean;
import com.slx.server.service.IAdminService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author slx
 * @since 2021-02-10
 */
@Service
public class AdminServiceImpl extends ServiceImpl<AdminMapper, Admin> implements IAdminService {
    @Autowired
    private AdminMapper adminMapper;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
    private JwtTokenUtil jwtTokenUtil;
    @Value("${jwt.tokenHead}")
    private String tokenHead;
    /**
     * 登录之后返回token
     * @param username
     * @param password
     * @param request
     * @return
     */
    @Override
    public RespBean login(String username, String password, String code,HttpServletRequest request) {
        //校验验证码
        String captcha = (String) request.getSession().getAttribute("captcha");//获取验证码
        System.out.println(captcha);
        if (!StringUtils.hasLength(captcha)||!captcha.equalsIgnoreCase(code)){
            return RespBean.error("验证码错误");
        }
        //登录
        UserDetails userDetails = userDetailsService.loadUserByUsername(username);
        boolean result = passwordEncoder.matches(password, passwordEncoder.encode("123"));
        //System.out.println(result);
        //passwordEncoder中的matches方法参数说明，CharSequence var1——用户输入的, String var2——经过编码后存储到数据库的
        if(null == userDetails||!result){
            return RespBean.error("用户密码不正确");
        }
        if(!userDetails.isEnabled()){
            return RespBean.error("账号被禁用,请联系管理员");
        }
        //更新登陆用户对象
        UsernamePasswordAuthenticationToken authenticationToken =
                new UsernamePasswordAuthenticationToken(userDetails,null,userDetails.getAuthorities());
        //放入security的全局
        SecurityContextHolder.getContext().setAuthentication(authenticationToken);
        //根据userDerails获取令牌token
        String token = jwtTokenUtil.generateToken(userDetails);
        Map<String, String> tokenMap = new HashMap<>();
        tokenMap.put("token", token);
        tokenMap.put("tokenHead", tokenHead);
        return RespBean.success("登录成功", tokenMap);
    }

    /**
     * 根据用户名获取用户信息
     * @param username
     * @return
     */
    @Override
    public Admin getAdminByName(String username) {
        Admin admin = adminMapper.selectOne(new QueryWrapper<Admin>().eq("username",username)
        .eq("enabled",true));//queryWrapper 判断条件：是否和数据库中的username、enabled字段相匹配
         return admin;
    }


}
