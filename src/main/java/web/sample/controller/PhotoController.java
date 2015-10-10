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
public class PhotoController {
	Logger log = Logger.getLogger(this.getClass());
	//final String basePath = "/var/www/html/TenAndTwo/Photo";
	final String basePath = "E:/Photo";

	@RequestMapping(value="/photo.do")
	public ModelAndView openPhoto(@RequestParam Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/photo");
		ArrayList<String> list = new ArrayList<String>();
		
		String path = (String) commandMap.get("path");
		String filePath;
		if(path != null) {
			filePath = basePath + "/" + path;
		} else {
			filePath = basePath;
		}
		
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
			if(file.isDirectory()) {
				list.add("<a href='" + "photo.do?path=" + fileName + "'>" + fileName + "</a>");
			} else {
				list.add(fileName);
			}
		}
		
		mv.addObject("dir", path);
		mv.addObject("list", list);
		return mv;
	}


}