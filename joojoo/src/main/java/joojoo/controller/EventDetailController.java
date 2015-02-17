package joojoo.controller;

import joojoo.entity.All;
import joojoo.service.EventCommentService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EventDetailController {
	static final Logger logger = LoggerFactory
			.getLogger(EventDetailController.class);
	@Autowired
	EventCommentService eventService;
	
	@RequestMapping(value="/event_detail")
	public String showDetail(@RequestParam("eventCommentCode") String eventStr, Model model){
		int eventCommentCode = Integer.parseInt(eventStr);
		
		logger.error("eventCommentCode = "+eventCommentCode);
		All eventDetail = eventService.SearchOneEvent(eventCommentCode);
		logger.error(""+eventDetail);
		model.addAttribute("eventDetail");
		
		return "event_detail";
	}
	
/*	//임시컨트롤
	@RequestMapping(value="/event_detail")
	public String showDetail(Model model){
		return "event/event_detail";
	}*/

}
