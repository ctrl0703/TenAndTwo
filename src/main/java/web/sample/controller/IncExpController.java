package web.sample.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import web.sample.service.GridService;

@Controller
public class IncExpController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="GridService")
	private GridService incExpService;
	
	@RequestMapping(value="/IncExp/IncExp01.do")
	public ModelAndView openSampleTest(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/IncExp/IncExp01");

        List<Map<String,Object>> list = incExpService.selectList(commandMap);
        mv.addObject("list", list);
		
		return mv;
	}
}