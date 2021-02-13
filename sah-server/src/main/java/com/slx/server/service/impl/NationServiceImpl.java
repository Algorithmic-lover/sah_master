package com.slx.server.service.impl;

import com.slx.server.pojo.Nation;
import com.slx.server.mapper.NationMapper;
import com.slx.server.service.INationService;
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
public class NationServiceImpl extends ServiceImpl<NationMapper, Nation> implements INationService {

}
