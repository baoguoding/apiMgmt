package com.rs.persistent;

import java.io.Serializable;
import java.util.List;

import com.baomidou.mybatisplus.annotations.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 *
 * 
 *
 */
public class Api implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(value = "api_id", type = IdType.UUID)
	private String apiId;

	/**  */
	private String version;

	/**  */
	private String name;

	/**  */
	private String description;

	/**  */
	private String type;

	/**  */
	@TableField(value = "type_desc")
	private String typeDesc;

	/**  */
	private String path;

	/**  */
	@TableField(value = "request_sample")
	private String requestSample;

	/**  */
	@TableField(value = "response_sample")
	private String responseSample;

	
	@TableField(exist = false)
	private List<Param> paramList;
	
	public String getApiId() {
		return this.apiId;
	}

	public void setApiId(String apiId) {
		this.apiId = apiId;
	}

	public String getVersion() {
		return this.version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTypeDesc() {
		return this.typeDesc;
	}

	public void setTypeDesc(String typeDesc) {
		this.typeDesc = typeDesc;
	}

	public String getPath() {
		return this.path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getRequestSample() {
		return this.requestSample;
	}

	public void setRequestSample(String requestSample) {
		this.requestSample = requestSample;
	}

	public String getResponseSample() {
		return this.responseSample;
	}

	public void setResponseSample(String responseSample) {
		this.responseSample = responseSample;
	}

	public List<Param> getParamList() {
		return paramList;
	}

	public void setParamList(List<Param> paramList) {
		this.paramList = paramList;
	}

}
