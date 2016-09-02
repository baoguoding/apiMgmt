package com.rs.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.rs.persistent.Api;
import com.rs.persistent.Param;
import com.rs.service.IApiService;
import com.rs.service.IParamService;

@RestController
@RequestMapping("/api")
public class ApiController {

	@Autowired 
	IApiService apiService;
	
	@Autowired
	IParamService paramService;
	
	@RequestMapping("/list")
	Object list() {
		List<Api> list = apiService.selectList(new Api());
		
		for (Iterator iterator = list.iterator(); iterator.hasNext();) {
			Api api = (Api) iterator.next();
			Param param = new Param();
			param.setApiId(api.getApiId());
			List<Param> paramList = paramService.selectList(param);
			api.setParamList(paramList);
		}
		return list;
	}
	
	
	@RequestMapping("/edit")
	Object add(@RequestBody JSONObject parm) {
		
		String apiId = parm.getString("apiId");
		
		Api api = new Api();
		api.setName(parm.getString("name"));
		api.setDescription(parm.getString("description"));
		api.setPath(parm.getString("path"));
		api.setRequestSample(parm.getString("requestSample"));
		api.setResponseSample(parm.getString("responseSample"));
		api.setType(parm.getString("type"));
		api.setTypeDesc(parm.getString("typeDesc"));
		api.setVersion(parm.getString("version"));
		
		
		if(StringUtils.isEmpty(apiId)){ //create object
			apiService.insert(api);
		}else{ //update object
			api.setApiId(parm.getString("apiId"));
			apiService.updateById(api);
		}
		
		JSONArray jsonArray = parm.getJSONArray("paramList");
		editParamList(jsonArray, api.getApiId());
		
		JSONObject object = new JSONObject();
		object.put("apiId", api.getApiId());
		
		return object;
	}
	
	@RequestMapping("/one")
	Object list(@RequestBody JSONObject parm) {
		Api api = new Api();
		String apiId = parm.getString("apiId");
		api = apiService.selectById(apiId);
		Param param = new Param();
		param.setApiId(api.getApiId());
		List<Param> paramList = paramService.selectList(param);
		api.setParamList(paramList);
		return api;
	}
	
	@RequestMapping("/delete")
	Object delete(@RequestBody JSONObject parm) {
		Api api = new Api();
		String apiId = parm.getString("apiId");
		
		apiService.deleteById(apiId);
		
		Param param = new Param();
		param.setApiId(apiId);
		List<Param> paramList = paramService.selectList(param);
		
		for (Iterator iterator = paramList.iterator(); iterator.hasNext();) {
			param = (Param) iterator.next();
			paramService.deleteById(param.getParamId());
		}
		
		JSONObject object = new JSONObject();
		object.put("status", "success");
		
		return object;
	}
	
	
	private void editParamList(JSONArray jsonArray, String apiId){
		//remove all records
		Param param = new Param();
		param.setApiId(apiId);
		List<Param> paramList = paramService.selectList(param);
		
		for (Iterator iterator = paramList.iterator(); iterator.hasNext();) {
			param = (Param) iterator.next();
			paramService.deleteById(param.getParamId());
		}
		
		
		//add new records
		for (Iterator iterator = jsonArray.iterator(); iterator.hasNext();) {
			JSONObject object = (JSONObject) iterator.next();
			String paramId = object.getString("paramId");
			param = new Param();
			param.setApiId(apiId);
			param.setDescription(object.getString("description"));
			param.setName(object.getString("name"));
			paramService.insert(param);
		}
		
	}
	
	
	
	
}
