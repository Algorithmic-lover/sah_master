package com.slx.server.service.impl;

import com.slx.server.pojo.Department;
import com.slx.server.mapper.DepartmentMapper;
import com.slx.server.service.IDepartmentService;
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
public class DepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department> implements IDepartmentService {

}
