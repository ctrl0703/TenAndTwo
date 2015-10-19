package web.sample.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import web.sample.dao.PhotoDao;

@Controller
public class PhotoController {
	Logger log = Logger.getLogger(this.getClass());
	@Autowired
	PhotoDao photoDao;

	@RequestMapping(value="/photo.do")
	public ModelAndView openPhoto(@RequestParam Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/photo");
		
		@SuppressWarnings("rawtypes")
		List photoList = photoDao.selectList("Photo.selectPhotoList", commandMap);
		
		@SuppressWarnings("rawtypes")
		List photoTagList = photoDao.selectList("Photo.selectPhotoTag", commandMap);
		
		mv.addObject("tag", commandMap.get("tag"));
		mv.addObject("photoList", photoList);
		mv.addObject("photoTagList", photoTagList);
		return mv;
	}


}