package joojoo.controller;

import joojoo.entity.All;
import joojoo.service.EventCommentService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EventDetailController {
	static final Logger logger = LoggerFactory
			.getLogger(EventDetailController.class);
	@Autowired
	EventCommentService eventService;
	
	@RequestMapping(value="/eventProcess", method=RequestMethod.GET)
	public String showDetail(@RequestParam("eventCommentCode") int eventCommentCode, Model model){
		
		All eventDetail = eventService.SearchOneEvent(eventCommentCode);
		model.addAttribute("eventDetail", eventDetail);
		logger.error("eventDetail 확인---------------------"+eventDetail);
		
		return "event/event_detail";
	}
	
/*	@RequestMapping(value="/coupon_buy", method=RequestMethod.GET)
	public String couponBuy(){
		return "event/event_Detail"; //파라매터 줘야되나?
	}
	
	@RequestMapping(value="/logi", method=RequestMethod.POST, 
			produces="text/plain;charset=utf-8")
	public @ResponseBody String ajaxReceive(@RequestParam String msg){
		logger.trace("흠 이게 되나");
		return "아이디와 비밀번호가 정확하지 않습니다.";
	}*/
}
