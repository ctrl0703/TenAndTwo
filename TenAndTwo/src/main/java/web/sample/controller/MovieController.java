package web.sample.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MovieController {
	Logger log = Logger.getLogger(this.getClass());
	//final String basePath = "/var/www/html/TenAndTwo/MovieClip";
	final String basePath = "E:/TenAndTwo/MovieClip";

	@RequestMapping(value="/movieClip.do")
	public ModelAndView openMovieClip(@RequestParam Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/movieClip");
		ArrayList<String> list = new ArrayList<String>();

		String filePath = basePath;
		
		File[] fileList = new File(filePath).listFiles();
		Arrays.sort(fileList, new Comparator<File>() {
			@Override
			public int compare(File file1, File file2) {
				String fileName1 = file1.getName();
				String fileName2 = file2.getName();
				
				return fileName1.compareTo(fileName2);
			}
		});
		for(File file : fileList) {
			String fileName = file.getName();
			log.debug(fileName);
			list.add(fileName);
		}		

		mv.addObject("list", list);
		return mv;
	}


}