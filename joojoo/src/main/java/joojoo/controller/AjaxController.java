package joojoo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AjaxController {
	static final Logger logger = LoggerFactory.getLogger(AjaxController.class);
	@RequestMapping(value="/ajax", method=RequestMethod.GET)
	public String ajaxPageCall(){
		return "/ajax";
	}
	
	@RequestMapping(value="/ajax", method=RequestMethod.POST, 
			produces="text/plain;charset=utf-8")
	public @ResponseBody String ajaxReceive(@RequestParam String msg){
		logger.trace("흠 이게 되나");
		return "AJAX로 작동합니다 msg : "+msg;
	}
	
}
