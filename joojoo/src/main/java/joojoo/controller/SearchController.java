package joojoo.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import joojoo.entity.All;
import joojoo.entity.Category;
import joojoo.service.EventCommentService;
import joojoo.service.StoreService;
import joojoo.util.GetSessionId;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

@Controller
//@SessionAttributes("category")
//@RequestMapping("/login")
public class SearchController {
	static final Logger logger = LoggerFactory
			.getLogger(SearchController.class);
	@Autowired
	EventCommentService eventService;
	@Autowired
	StoreService storeService;

	@RequestMapping(value="/")
	public String showMain(Model model, SessionStatus sessionStatus){
		/*if(sessionStatus.isComplete() == true){ //세션 차있으면
			sessionStatus.setComplete();
		}*/
		
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
		Category category = new Category();
		model.addAttribute("category1", category);
		model.addAttribute("category2", category);
		
		List<All> events = eventService.SearchValidEvent();
		model.addAttribute("events", events);
		List<All> stores = storeService.showAllStore();
		model.addAttribute("stores", stores);
		
		logger.error("events"+events);
		return "main";
	}


	@RequestMapping(value="/main/keyword",  method=RequestMethod.POST)
	public String searchKeywordResult(@ModelAttribute("category") Category category, Model model){
		//model.addAttribute("category", category);
		logger.error("처음 받은 카테고리는..."+category);
		// model.addAttribute("category", category);
		logger.error("검색전 카테고리는..." + category);
		List<All> search_events = eventService.SeachByKeyword(category);
		model.addAttribute("search_events", search_events);

		List<All> search_stores = storeService.showStoresByKeyword(category);
		model.addAttribute("search_stores", search_stores);

		return "redirect:/keyword";
	}

	
	@RequestMapping(value="/keyword",  method=RequestMethod.GET)
	public String showKeywordResult(@ModelAttribute("category1") Category category, Model model){ 
		model.addAttribute("category1", category);
		logger.error("카테고리키워드.."+category);
		return "search/search";
	}
	
	@RequestMapping(value="/main/category",  method=RequestMethod.POST)
	public String searchCategoryResult(HttpServletRequest req, Model model){

		Category category = new Category();
		category.setRegionName(req.getParameter("regionName"));
		category.setTypeName(req.getParameter("typeName"));
		category.setServiceTypeName(req.getParameter("serviceTypeName"));
		category.setPersonsLevel(req.getParameter("personsLevel"));

		logger.error("카테고리 처음받으면.."+category);
		if(category.getPersonsLevel() == null){
			category.setPersonsLevel("none");
		}
		if(category.getRegionName() == null){
			category.setRegionName("none");
		}
		if(category.getServiceTypeName() == null){
			category.setServiceTypeName("none");
		}
		if(category.getTypeName() == null){
			category.setTypeName("none");
		}
		
		logger.error("검색직전 category = "+category);
		
		model.addAttribute("category2");
		List<All> search_events = eventService.SeachByCategory(category);		
		model.addAttribute("search_events", search_events);
		
		List<All> search_stores = storeService.showStoresByCategory(category);
		model.addAttribute("search_stores", search_stores);
		return "redirect:/category";
	}
	
/*	@RequestMapping(value="/main/category",  method=RequestMethod.POST)
	public String searchCategoryResult(@ModelAttribute("category") Category category, Model model){ 
		
		logger.error("카테고리 처음받으면.."+category);
		if(category.getPersonsLevel() == null){
			category.setPersonsLevel("none");
		}
		if(category.getRegionName() == null){
			category.setRegionName("none");
		}
		if(category.getServiceTypeName() == null){
			category.setServiceTypeName("none");
		}
		if(category.getTypeName() == null){
			category.setTypeName("none");
		}
		
		logger.error("category = "+category);
		
		model.addAttribute("category");
		List<All> search_events = eventService.SeachByCategory(category);		
		model.addAttribute("search_events", search_events);
		
		List<All> search_stores = storeService.showStoresByCategory(category);
		model.addAttribute("search_stores", search_stores);
		return "redirect:/category";
	}*/
	
	@RequestMapping(value="/category",  method=RequestMethod.GET)
	public String showCategoryResult(@ModelAttribute("category2") Category category, Model model){
		model.addAttribute("category2", category);
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