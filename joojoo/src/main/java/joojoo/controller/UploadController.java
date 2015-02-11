package joojoo.controller;

import java.io.File;
import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadController {
	static final Logger logger = LoggerFactory
			.getLogger(UploadController.class);
	@RequestMapping(value="/upload", method=RequestMethod.GET)
	public String showUploadForm(){
		return "upload/upload";
	}
	
	@RequestMapping(value="/upload", method=RequestMethod.POST)
	public String uploadDone(@RequestParam("uploadFile") MultipartFile file, Model model) throws IOException{
		String fileName = file.getOriginalFilename();
		logger.error("c:\\db\\upload\\"+file.getOriginalFilename());
		file.transferTo(new File("c:\\db\\uploaded\\"+file.getOriginalFilename()));
		model.addAttribute("fileName", fileName);
		logger.error("c:\\db\\upload\\"+file.getOriginalFilename());
/*
		int idx = fileName.lastIndexOf(".");
		if(fileName.substring(idx, fileName.length()) == "jpg"){
			file.transferTo(new File("c:\\db\\upload\\"+file.getOriginalFilename()));
			session.setAttribute("filName", fileName);
			
			logger.error("파일이름 : "+file.getOriginalFilename());
		}
		else
			logger.error("jpg파일이 아닙니다.");
			logger.error(fileName.substring(idx, fileName.length()));
		*/
		return "upload/done";
	}
}
