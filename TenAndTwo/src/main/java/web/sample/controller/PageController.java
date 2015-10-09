package web.sample.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping(value="/index.do")
	public ModelAndView openIndex(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/index");
		
		return mv;
	}
	
	@RequestMapping(value="/about.do")
	public ModelAndView openAbout(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/about");
		
		return mv;
	}

	@RequestMapping(value="/account.do")
	public ModelAndView openAccount(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/account");
		
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