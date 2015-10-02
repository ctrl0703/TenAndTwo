package web.sample.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import web.sample.service.GridService;

@Controller
public class IncExpController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="IncExpGridServiceImpl")
	private GridService incExpService;
	
	@RequestMapping(value="/IncExp/IncExp01.do")
	public ModelAndView openSampleTest(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/IncExp/IncExp01");

//        List<Map<String,Object>> list = incExpService.selectList(commandMap);
        //mv.addObject("list", list);
		
		return mv;
	}

	@RequestMapping(value="/IncExp/getGridList.do")
	public JSONObject getGridList(Map<String, Object> commandMap) throws Exception {
		ArrayList<Map<String, Object>> mapList = (ArrayList<Map<String, Object>>) incExpService.selectList(commandMap);
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		
		for(Map<String, Object> map : mapList) {

			JSONObject jsonObj = new JSONObject();
			for(String key : map.keySet()) {
				if(map.get(key) != null) {
					jsonObj.put(key, map.get(key));
				}
			}
			
			jsonArray.add(jsonObj);
		}

		jsonObject.put("rows", jsonArray);
		jsonObject.put("page", commandMap.get("page"));
		jsonObject.put("total", commandMap.get("total"));
		jsonObject.put("records", commandMap.get("records"));
		return jsonObject;
	}
}