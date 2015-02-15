package joojoo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import joojoo.entity.All;
import joojoo.entity.Category;
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
import org.springframework.web.bind.support.SessionStatus;

@Controller
@SessionAttributes("category")
//@RequestMapping("/login")
public class SearchController {
	static final Logger logger = LoggerFactory
			.getLogger(SearchController.class);
	@Autowired
	EventCommentService eventService;
	@Autowired
	StoreService storeService;
	
/*	@RequestMapping(value="/main_search", method=RequestMethod.POST)
	public String showMain(Model model){
		Category category = new Category();
		model.addAttribute("category", category);
		
		List<All> events = eventService.SeachByKeyword(category);
		model.addAttribute("events", events);
		List<All> stores = storeService.showStoresByKeyword(category);
		model.addAttribute("stores", stores);
		return "main";
	}

	
	@RequestMapping(value = "/main", method = RequestMethod.POST)
	public String showResult(Model model, HttpSession session) {
		String path = "redirect:/";
		Category category = null;

		if (session.getAttribute("category") != null) {
			category = (Category) session.getAttribute("category");
			model.addAttribute("category", category);

			if (category.getKeyword() != null) {
				List<All> events = eventService.SeachByKeyword(category);
				model.addAttribute("events", events);
				List<All> stores = storeService.showStoresByKeyword(category);
				model.addAttribute("stores", stores);
			} else if (category.getPersonsLevel() != "none"
					|| category.getRegionName() != "none"
					|| category.getServiceTypeName() != "none"
					|| category.getTypeName() != "none") {
				List<All> events = eventService.SeachByCategory(category);
				model.addAttribute("events", events);
				List<All> stores = storeService.showStoresByCategory(category);
				model.addAttribute("stores", stores);
			}
		} else if (category == null) { //검색한적이 없으면 모두 출력
			List<All> events = eventService.SeachAllEvent();
			model.addAttribute("events", events);
			List<All> stores = storeService.showAllStore();
			model.addAttribute("stores", stores);
		}
		return path;
	}*/
	
	@RequestMapping(value="/")
	public String showMain(Model model, SessionStatus sessionStatus){
		if(sessionStatus.isComplete() == true){ //세션 차있으면
			sessionStatus.setComplete();
		}
		Category category = new Category();
		model.addAttribute("category", category);
		
		List<All> events = eventService.SeachAllEvent();
		model.addAttribute("events", events);
		List<All> stores = storeService.showAllStore();
		model.addAttribute("stores", stores);
		return "main";
	}


	@RequestMapping(value="/main/keyword",  method=RequestMethod.POST)
	public String searchKeywordResult(@ModelAttribute("category") Category category, Model model){ //하나로 합치고싶은데 category를 모델에 등록할때가 문제임...
		return "redirect:/keyword";
	}
	
	@RequestMapping(value="/keyword",  method=RequestMethod.GET)
	public String showKeywordResult(@ModelAttribute("category") Category category, Model model){ 
	
		model.addAttribute("category");
		List<All> search_events = eventService.SeachByKeyword(category);
		model.addAttribute("search_events", search_events);

		List<All> search_stores = storeService.showStoresByKeyword(category);
		model.addAttribute("search_stores", search_stores);
		
		logger.error(""+search_events);

		return "search/search";
	}
	@RequestMapping(value="/main/category",  method=RequestMethod.POST)
	public String searchCategoryResult(@ModelAttribute("category") Category category, Model model){ 
		return "redirect:/category";
	}
	
	@RequestMapping(value="/category",  method=RequestMethod.GET)
	public String showCategoryResult(@ModelAttribute("category") Category category, Model model){
		
		model.addAttribute("category");
		List<All> search_events = eventService.SeachByCategory(category);		
		model.addAttribute("search_events", search_events);
		
		List<All> search_stores = storeService.showStoresByCategory(category);
		model.addAttribute("search_stores", search_stores);
		return "search/search";
	}
}