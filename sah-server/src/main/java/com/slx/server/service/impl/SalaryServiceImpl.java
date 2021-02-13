package com.slx.server.service.impl;

import com.slx.server.pojo.Salary;
import com.slx.server.mapper.SalaryMapper;
import com.slx.server.service.ISalaryService;
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
public class SalaryServiceImpl extends ServiceImpl<SalaryMapper, Salary> implements ISalaryService {

}
