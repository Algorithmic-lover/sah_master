package com.slx.server.controller;

import com.slx.server.pojo.Admin;
import com.slx.server.pojo.LoginAdmin;
import com.slx.server.pojo.RespBean;
import com.slx.server.service.IAdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

/**
 * @author Slxin
 */
@RestController
@Api(tags = "LoginController")
public class LoginController {
    @Autowired
    IAdminService adminService;

    @ApiOperation(value = "登录之后返回token")
    @PostMapping("/login")
    public RespBean login(@RequestBody LoginAdmin loginAdmin, HttpServletRequest request){
        return adminService.login(loginAdmin.getUsername(), loginAdmin.getPassword(),loginAdmin.getCode(), request);
    }

    @ApiOperation(value = "获取当前登录用户信息")
    @GetMapping("/admin/info")
    public Admin getAdminInfo(Principal principal/*获取security当前登录对象*/){
        if (null == principal) {
            return null;
        }
        String username = principal.getName();//用户名
        System.out.println(username);
        Admin admin = adminService.getAdminByName(username);
        admin.setPassword(null);//返回密码为null,防止泄露。
        return admin;
    }

    @ApiOperation(value = "退出登录")
    @PostMapping("/logout")
    public RespBean logout(){
        return RespBean.success("注销成功");
    }
}
