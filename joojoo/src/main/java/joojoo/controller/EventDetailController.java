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

@Controller
public class EventDetailController {
	static final Logger logger = LoggerFactory
			.getLogger(EventDetailController.class);
	@Autowired
	EventCommentService eventService;
	
	@RequestMapping(value="/eventProcess", method=RequestMethod.GET)
	public String showDetail(@RequestParam("eventCommentCode") int eventCommentCode, Model model){
		
		All eventDetail = eventService.SearchOneEvent(eventCommentCode);
		model.addAttribute("eventDetail");
		
		return "event/event_detail";
	}
	
/*	@RequestMapping(value="/event_detail", method=RequestMethod.GET)
	public String showDetailPage(){		
		return "event_detail";
	}*/
	
/*	//임시컨트롤
	@RequestMapping(value="/event_detail")
	public String showDetail(Model model){
		return "event/event_detail";
	}*/

}
