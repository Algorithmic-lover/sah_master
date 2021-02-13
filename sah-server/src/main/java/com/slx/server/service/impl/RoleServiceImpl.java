package com.slx.server.service.impl;

import com.slx.server.pojo.Role;
import com.slx.server.mapper.RoleMapper;
import com.slx.server.service.IRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author slx
 * @since 2021-02-10
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements IRoleService {

}
