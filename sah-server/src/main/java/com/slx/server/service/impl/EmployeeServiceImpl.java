package com.slx.server.service.impl;

import com.slx.server.pojo.Employee;
import com.slx.server.mapper.EmployeeMapper;
import com.slx.server.service.IEmployeeService;
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
public class EmployeeServiceImpl extends ServiceImpl<EmployeeMapper, Employee> implements IEmployeeService {

}
