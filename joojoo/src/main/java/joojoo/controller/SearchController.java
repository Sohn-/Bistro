package joojoo.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import joojoo.entity.All;
import joojoo.entity.Category;
import joojoo.service.EventCommentService;
import joojoo.service.StoreService;
import joojoo.util.GetSessionId;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@SessionAttributes({"search_events", "search_stores", "category_keyword", "category_category"})
/*@SessionAttributes({"search_events", "search_stores", "category_keyword", "category_category", "regionNames", "typeNames", "serviceTypeNames", "personsLevels"})*/
//@RequestMapping("/login")
public class SearchController {
	static final Logger logger = LoggerFactory
			.getLogger(SearchController.class);
	@Autowired
	EventCommentService eventService;
	@Autowired
	StoreService storeService;

	@RequestMapping(value="/")
	public String showMain(Model model){
		//////////////////////////////////////////////라디오버튼을 위한 세팅
		GetSessionId gs = GetSessionId.getInstance();
		
		List<String> regionNames = gs.getRegionNames();	
		model.addAttribute("regionNames",regionNames);
		
		List<String> typeNames = gs.getTypeNames();
		model.addAttribute("typeNames",typeNames); 
			
		List<String> serviceTypeNames = gs.getServiceTypeNames();
		model.addAttribute("serviceTypeNames",serviceTypeNames);	
		
		List<String> personsLevels = gs.getPersonsLevels();		
		model.addAttribute("personsLevels",personsLevels);
		//////////////////////////////////////////////라디오버튼을 위한 세팅 끝
		
		Category category_keyword = new Category();
		Category category_category = new Category();
		model.addAttribute("category_keyword", category_keyword);
		model.addAttribute("category_category", category_category);
		
		List<All> events = eventService.SearchValidEvent();
		model.addAttribute("events", events);
		List<All> stores = storeService.showAllStore();
		model.addAttribute("stores", stores);
		
		logger.error("events"+events);
		return "main";
	}
	
	@RequestMapping(value="/main/keyword",  method=RequestMethod.POST)
	public String searchKeywordResult(@ModelAttribute Category category_keyword, Model model) {
		logger.error("처음 받은 카테고리는..."+category_keyword);
		
		List<All> search_events = eventService.SeachByKeyword(category_keyword);
		model.addAttribute("search_events", search_events);
		
		List<All> search_stores = storeService.showStoresByKeyword(category_keyword);
		model.addAttribute("search_stores", search_stores);

		return "redirect:/keyword";
	}

	@RequestMapping(value="/keyword",  method=RequestMethod.GET)
	public String showKeywordResult(Model model){
GetSessionId gs = GetSessionId.getInstance();
		
		List<String> regionNames = gs.getRegionNames();	
		model.addAttribute("regionNames",regionNames);
		
		List<String> typeNames = gs.getTypeNames();
		model.addAttribute("typeNames",typeNames); 
			
		List<String> serviceTypeNames = gs.getServiceTypeNames();
		model.addAttribute("serviceTypeNames",serviceTypeNames);	
		
		List<String> personsLevels = gs.getPersonsLevels();		
		model.addAttribute("personsLevels",personsLevels);
		
		model.addAttribute("category_keyword", new Category());
		return "search/search";
	}

	@RequestMapping(value="/main/category",  method=RequestMethod.POST)
	public String searchCategoryResult(@ModelAttribute Category category_category, Model model){
		
		logger.error("처음 받은 카테고리는..."+category_category);
		/*GetSessionId gs = GetSessionId.getInstance();
		gs.categorySetNone(category_category);*/
		if (category_category.getPersonsLevel() == null) {
			category_category.setPersonsLevel("none");
		}
		if (category_category.getRegionName() == null) {
			category_category.setRegionName("none");
		}
		if (category_category.getServiceTypeName() == null) {
			category_category.setServiceTypeName("none");
		}
		if (category_category.getTypeName() == null) {
			category_category.setTypeName("none");
		}
		
		List<All> search_events = eventService.SeachByCategory(category_category);		
		model.addAttribute("search_events", search_events);
		
		List<All> search_stores = storeService.showStoresByCategory(category_category);
		model.addAttribute("search_stores", search_stores);
		
		return "redirect:/category";
	}
	
	@RequestMapping(value="/category",  method=RequestMethod.GET)
	public String showCategoryResult(Model model){
GetSessionId gs = GetSessionId.getInstance();
		
		List<String> regionNames = gs.getRegionNames();	
		model.addAttribute("regionNames",regionNames);
		
		List<String> typeNames = gs.getTypeNames();
		model.addAttribute("typeNames",typeNames); 
			
		List<String> serviceTypeNames = gs.getServiceTypeNames();
		model.addAttribute("serviceTypeNames",serviceTypeNames);	
		
		List<String> personsLevels = gs.getPersonsLevels();		
		model.addAttribute("personsLevels",personsLevels);
		
		model.addAttribute("category_category", new Category());
		return "search/search";
	}
	
	
	@ExceptionHandler
	public String exceptionParameter(RuntimeException e){
		logger.trace("에러@_@", e);
		return "error";
	}
	
	@ExceptionHandler({IOException.class, SQLException.class})
	public String multiExceptionHandling(){
		return "error";
	}
}