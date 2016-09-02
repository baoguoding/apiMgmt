package com.rs.service.impl;

import org.springframework.stereotype.Service;

import com.rs.persistent.mapper.ParamMapper;
import com.rs.persistent.Param;
import com.rs.service.IParamService;
import com.baomidou.framework.service.impl.CommonServiceImpl;

/**
 *
 * Param 表数据服务层接口实现类
 *
 */
@Service
public class ParamServiceImpl extends CommonServiceImpl<ParamMapper, Param> implements IParamService {


}