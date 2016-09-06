package com.rs.service.impl;

import org.springframework.stereotype.Service;

import com.rs.persistent.mapper.GasHistMapper;
import com.rs.persistent.GasHist;
import com.rs.service.IGasHistService;
import com.baomidou.framework.service.impl.CommonServiceImpl;

/**
 *
 * GasHist 表数据服务层接口实现类
 *
 */
@Service
public class GasHistServiceImpl extends CommonServiceImpl<GasHistMapper, GasHist> implements IGasHistService {


}