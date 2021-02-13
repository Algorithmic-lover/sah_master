package com.slx.server.service.impl;

import com.slx.server.pojo.Oplog;
import com.slx.server.mapper.OplogMapper;
import com.slx.server.service.IOplogService;
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
public class OplogServiceImpl extends ServiceImpl<OplogMapper, Oplog> implements IOplogService {

}
