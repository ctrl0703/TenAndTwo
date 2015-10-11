package web.sample.controller;

import java.util.ArrayList;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import web.sample.dao.MemberDao;

@Controller
public class PageController {
	Logger log = Logger.getLogger(this.getClass());
	@Autowired
	MemberDao memberDao;
	
	@RequestMapping(value="/index.do")
	public ModelAndView openIndex(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/index");
		
		return mv;
	}
	
	@RequestMapping(value="/about.do")
	public ModelAndView openAbout(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/about");
		
		@SuppressWarnings("unchecked")
		ArrayList<Map<String, String>> list = (ArrayList<Map<String, String>>) memberDao.selectList("Member.selectList");
		
		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping(value="/calendar.do")
	public ModelAndView openCalendar(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/calendar");
		
		return mv;
	}

	@RequestMapping(value="/history.do")
	public ModelAndView openHistory(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/history");
		
		return mv;
	}
	
	@RequestMapping(value="/travel.do")
	public ModelAndView openTravel(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/travel");
		
		return mv;
	}

	@RequestMapping(value="/eventForm.do")
	public ModelAndView openEventForm(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/eventForm");
		
		return mv;
	}

	@RequestMapping(value="/historyForm.do")
	public ModelAndView openHistoryForm(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/historyForm");
		
		return mv;
	}
}