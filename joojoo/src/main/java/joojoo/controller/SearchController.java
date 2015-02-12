package joojoo.controller;

import java.util.List;

import joojoo.entity.Category;
import joojoo.entity.EventComment;
import joojoo.entity.Stores;
import joojoo.service.EventCommentService;
import joojoo.service.StoreService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({"loginUser","loginOwner"})
//@RequestMapping("/login")
public class SearchController {
	static final Logger logger = LoggerFactory
			.getLogger(SearchController.class);
	@Autowired
	EventCommentService eventService;
	@Autowired
	StoreService storeService;
	
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String showMain(Model model){
		Category category = new Category();
		model.addAttribute("category", category);
		
		List<EventComment> events = eventService.SeachAllEvent();
		model.addAttribute("events",events);
		List<Stores> stores = storeService.
		return "main";
	}
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String showSearchResult(@ModelAttribute("category") Category category, Model model){
		return null;
	}
}