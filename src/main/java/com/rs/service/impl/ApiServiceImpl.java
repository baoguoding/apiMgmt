package com.rs.service.impl;

import org.springframework.stereotype.Service;

import com.rs.persistent.mapper.ApiMapper;
import com.rs.persistent.Api;
import com.rs.service.IApiService;
import com.baomidou.framework.service.impl.CommonServiceImpl;

/**
 *
 * Api 表数据服务层接口实现类
 *
 */
@Service
public class ApiServiceImpl extends CommonServiceImpl<ApiMapper, Api> implements IApiService {


}