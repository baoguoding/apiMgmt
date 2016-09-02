package com.rs.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSONObject;
import com.rs.persistent.Api;
import com.rs.persistent.Param;
import com.rs.service.IApiService;
import com.rs.service.IParamService;

@RestController
@RequestMapping("/param")
public class ParamController {

	@Autowired 
	IApiService apiService;
	
	@Autowired
	IParamService paramService;
	
	@RequestMapping("/list")
	Object list() {
		List<Param> list = paramService.selectList(new Param());
		return list;
	}
	
	
	@RequestMapping("/edit")
	Object add(@RequestBody JSONObject parm) {
		
		String paramId = parm.getString("paramId");
		String apiId = parm.getString("apiId");
		
		Param param = new Param();
		param.setApiId(apiId);
		
		Api api = apiService.selectById(apiId);
		if(api == null){
			JSONObject object = new JSONObject();
			object.put("status", "Record Not Found in master table.");
			return object;
		}		
		
		param.setName(parm.getString("name"));
		param.setDescription(parm.getString("description"));
		
		if(StringUtils.isEmpty(paramId)){ //create object
			paramService.insert(param);			
		}else{ //update object
			param.setParamId(paramId);
			paramService.updateById(param);
		}
		
		JSONObject object = new JSONObject();
		object.put("paramId", param.getParamId());
		
		return object;
	}
	
	@RequestMapping("/one")
	Object list(@RequestBody JSONObject parm) {
		String paramId = parm.getString("paramId");
		Param param = paramService.selectById(paramId);
		return param;
	}
	
	@RequestMapping("/delete")
	Object delete(@RequestBody JSONObject parm) {
		String paramId = parm.getString("paramId");
		paramService.deleteById(paramId);
		
		JSONObject object = new JSONObject();
		object.put("status", "success");
		
		return object;
	}
}
