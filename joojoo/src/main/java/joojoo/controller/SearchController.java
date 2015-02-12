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
		model.addAttribute("events", events);
		List<Stores> stores = storeService.showAllStore();
		model.addAttribute("stores", stores);
		return "main";
	}
	@RequestMapping(value="/main/keyword", method=RequestMethod.POST)
	public String searchKeywordResult(@ModelAttribute("category") Category category, Model model){
		
		List<EventComment> events = eventService.SeachByKeyword(category);	
		model.addAttribute("search_events", events);
		List<Stores> stores = storeService.showStoresBySerchKeyword(category);
		model.addAttribute("search_stores", stores);
		return "redirect:/main";
	}
	
	@RequestMapping(value="/main/keyword", method=RequestMethod.POST)
	public String searchCategoryResult(@ModelAttribute("category") Category category, Model model){
		
		List<EventComment> events = eventService.SeachByCategory(category);	
		model.addAttribute("search_events", events);
		List<Stores> stores = storeService.showStoresByCategory(category);
		model.addAttribute("search_stores", stores);
		return "redirect:/main";
	}
}