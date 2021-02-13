package com.slx.server.service;

import com.slx.server.pojo.Admin;
import com.baomidou.mybatisplus.extension.service.IService;
import com.slx.server.pojo.RespBean;

import javax.servlet.http.HttpServletRequest;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author slx
 * @since 2021-02-10
 */
public interface IAdminService extends IService<Admin> {
    /**
     * 登录之后返回token
     * @param username
     * @param password
     * @param request
     * @return
     */
    RespBean login(String username, String password, String code,HttpServletRequest request);

    /**
     * 根据用户名获取用户信息
     * @param username
     * @return
     */
    Admin getAdminByName(String username);
}
