package com.rs.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSONObject;
import com.rs.persistent.GasHist;
import com.rs.service.IGasHistService;

@RestController
@RequestMapping("/gasHist")
public class GasHistController {
	@Autowired
	IGasHistService gasHistService;

	@RequestMapping("/list")
	Object list() {
		List<GasHist> list = gasHistService.selectList(new GasHist());
		return list;
	}

	@RequestMapping("/update")
	Object update(@RequestBody JSONObject parm) {

		String ids = parm.getString("ids").trim();
		
		String[] arr = ids.split(";");
		
		for (int i = 0; i < arr.length; i++) {
			String cardId = arr[i];
			if(StringUtils.isEmpty(cardId)){
				continue;
			}

			String path = "http://m.saclub.com.cn/getGasRecordAction.do?act=getGasRecord&tradeId=" + cardId + "&cardid=" + cardId
					+ "&tradeId=2000-01-01&startTime=2000-01-01&endTime=2016-09-06";
			
			String name = "";
			List<GasHist> gasHistList = this.process(path, cardId, name);

			if (gasHistList.isEmpty()) {
				//Nothing
			}else{
				GasHist gasHist = new GasHist();
				gasHist.setCardId(cardId);
				
				List<GasHist> oldGasHistList = gasHistService.selectList(gasHist);
				for (Iterator iterator = oldGasHistList.iterator(); iterator.hasNext();) {
					GasHist oldGasHist = (GasHist) iterator.next();
					gasHistService.deleteById(oldGasHist.getId());
				}
				
				
				for (Iterator iterator = gasHistList.iterator(); iterator.hasNext();) {
					GasHist newGasHist = (GasHist) iterator.next();
					gasHistService.insert(newGasHist);
				}
			}
		}
		

		JSONObject object = new JSONObject();
		object.put("status", "success");
		
		return object;

	}
	
	
	@RequestMapping("/delete")
	Object delete(@RequestBody JSONObject parm) {
		String ids = parm.getString("ids").trim();
		String[] arr = ids.split(";");
		
		for (int i = 0; i < arr.length; i++) {
			String cardId = arr[i];
			if(StringUtils.isEmpty(cardId)){
				continue;
			}

			GasHist gasHist = new GasHist();
			gasHist.setCardId(cardId);
				
			List<GasHist> oldGasHistList = gasHistService.selectList(gasHist);
			for (Iterator iterator = oldGasHistList.iterator(); iterator.hasNext();) {
				GasHist oldGasHist = (GasHist) iterator.next();
				gasHistService.deleteById(oldGasHist.getId());
			}
		}
		
		JSONObject object = new JSONObject();
		object.put("status", "success");
		
		return object;

	}

	private List<GasHist> process(String path, String cardId, String name) {
		List<GasHist> records = new ArrayList();

		try {
			GasHist r = new GasHist();
			int count = 0;

			URL resourceUrl = new URL(path);

			InputStream content = (InputStream) resourceUrl.getContent();

			BufferedReader in = new BufferedReader(new InputStreamReader(content, "UTF-8"));
			String line = "";
			while ((line = in.readLine()) != null) {

				String str1 = "<li class=\"col-xs-3 text-center\">";

				if (line.contains("日期") || line.contains("升数") || line.contains("总价") || line.contains("积分")) {
					continue;
				}

				if (line.contains(str1)) {
					int beginIndex = line.indexOf(str1) + 33;
					int endIndex = line.length() - 5;
					String value = line.substring(beginIndex, endIndex);
					setValue(count, r, value);
					count++;
				}

				str1 = "<p>";
				if (line.contains(str1)) {
					int beginIndex = line.indexOf(str1) + 3;
					int endIndex = line.length() - 4;
					String value = line.substring(beginIndex, endIndex).replace("&nbsp;", "").replace("时间：", "")
							.replace("油 号：", "").replace("交易类型：", "").replace("加油网点：", "");
					setValue(count, r, value);
					count++;
				}

				if (count >= 8) {
					records.add(r);
					r = new GasHist();
					count = 0;
				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return records;
	}

	private GasHist setValue(int c, GasHist r, String value) {
		if (c == 0) {
			r.setDate(value);
		} else if (c == 1) {
			r.setLiter(value);
		} else if (c == 2) {
			r.setTotalPrice(value);
		} else if (c == 3) {
			r.setScore(value);
		} else if (c == 4) {
			r.setTime(value);
		} else if (c == 5) {
			r.setGasNumber(value);
		} else if (c == 6) {
			r.setType(value);
		} else if (c == 7) {
			r.setPlace(value);
		}

		return r;
	}
}
