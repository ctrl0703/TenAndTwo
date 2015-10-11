package web.sample.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	Logger log = Logger.getLogger(this.getClass());

	@RequestMapping(value="/loginPage.do")
	public ModelAndView openLoginPage(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/loginPage");
		
		return mv;
	}
}