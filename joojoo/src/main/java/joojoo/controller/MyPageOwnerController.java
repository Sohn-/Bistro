package joojoo.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import joojoo.entity.All;
import joojoo.entity.EventComment;
import joojoo.entity.Owners;
import joojoo.service.CouponService;
import joojoo.service.EventCommentService;
import joojoo.service.OwnerService;
import joojoo.service.StoreService;
import joojoo.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class MyPageOwnerController {
	static final Logger logger = LoggerFactory
			.getLogger(MyPageOwnerController.class);
	
		@Autowired
	    private UserService userService;
	   
	    @Autowired
	    private OwnerService ownerService;
	   
	    @Autowired
	    private StoreService storeService;
	    
	    @Autowired
	    private CouponService couponService;
	    
	    @Autowired
	    private EventCommentService eventService;

	    @RequestMapping(value="/info", method=RequestMethod.GET)
		public String showInfoControl(Model model,HttpSession session, HttpServletRequest req){
	    	String path = null;
	    	
	    	Object loginOwnerObj = session.getAttribute("loginOwner");
	    	Object loginUserObj = session.getAttribute("loginUser");
	    	
	    	if(loginOwnerObj != null){
	    		All loginOwner = (All)loginOwnerObj;
	    		String ownerId = loginOwner.getOwnerId();
	    		
	    		///업주정보수정을 위한 코드
	    		All updateOwner = ownerService.getOwnersByOwnerId(ownerId);
	    		model.addAttribute("updateOwner", updateOwner);
	    		///업주정보수정을 위한 코드 끝
	    		
	    		///이벤트등록을 위한 코드
	    		EventComment insertEvent = new EventComment();
	    		model.addAttribute("insertEvent",insertEvent);
	    		List<All> storesbyOwnerId = storeService.showOwnerStores(ownerId);
	    		for(All store: storesbyOwnerId){
	    			int storeCode = store.getStoreCode();
	    			store.setStoreCodeStr(""+storeCode);
	    		}
	    		model.addAttribute("stores", storesbyOwnerId);
	    		///이벤트등록을 위한 코드 끝
	    		
	    		///이벤트글조회를 위한 코드
	    		List<All> allEvent = eventService.SeachMyEvent(ownerId);
	    		int count=1;
	    		for(All event: allEvent){
	    			model.addAttribute("event"+count, event);
	    			count++;
	    		}
	    		model.addAttribute("allEvent",allEvent);	
	    		
	    		/*Map<String, String> serviceTypeNames = new HashMap<String, String>();
	    		serviceTypeNames.put("discount","금액 할인");
	    		serviceTypeNames.put("serviceMenu","서비스 메뉴 제공");
	    		model.addAttribute("serviceTypeNames",serviceTypeNames);
	    		
	    		Map<String, String> personsLevels = new HashMap<String, String>();
	    		personsLevels.put("four","4명이하");
	    		personsLevels.put("ten","5~10명");
	    		personsLevels.put("over","10명이상");
	    		model.addAttribute("personsLevels",personsLevels);*/

	    		List<String> serviceTypeNames = new ArrayList<String>();
	    		serviceTypeNames.add("금액 할인");
	    		serviceTypeNames.add("서비스 메뉴 제공");
	    		model.addAttribute("serviceTypeNames",serviceTypeNames);
	    		
	    		List<String> personsLevels = new ArrayList<String>();
	    		personsLevels.add("4명이하");
	    		personsLevels.add("5~10명");
	    		personsLevels.add("10명이상");
	    		model.addAttribute("personsLevels",personsLevels);   	
	    		///이벤트글조회를 위한 코드 끝
	    		
	    		///쿠폰조회를 위한 코드
	    		List<All> allCoupon = couponService.getCouponsByOwnerId(loginOwner.getOwnerId());
	    		logger.error("여기는 showOwnerCouponPage");
	    		logger.trace("수업:"+allCoupon);
		    	
		    	model.addAttribute("allCoupon",allCoupon);
	    		///쿠폰조회를 위한 코드 끝
	    		
		    	path = "info/owner";
	    	}


	    	else if(loginUserObj != null){
	    		All loginUser = (All)loginUserObj;
	    		String userId = loginUser.getUserId();
	    		path ="redirect:/info/user";

	    	}
	    	
	    	else{	//로그인이 안된경우는 JSP에서 처리..
	    		model.addAttribute("needLogin", true);
	    		path="redirect:/login";
	    		
	    	}
			return path;
			
		}
   
	    @RequestMapping(value="/info/update_owner", method=RequestMethod.POST)
		public String updateOwner(@ModelAttribute Owners updateOwner, Model model){
	    	logger.error("updateOwner 정보.."+updateOwner);
	    	int result = ownerService.updateOwnerInfo(updateOwner);
	    	if(result >0){
	    		model.addAttribute("updateOwner", true);
	    	}
	    	else{
	    		model.addAttribute("updateOwner", false);
	    	}
	    	logger.error("업데이트 오너 종료");
	    	//마이페이지에서 updateSuccess가 true면 처음 들어갈때 if로 확인하여 alert 띄우기..
			return "redirect:/info#tab2";
		}
	    
	    @RequestMapping(value="/info/insert_event", method=RequestMethod.POST)
		public String insertEvent(@ModelAttribute EventComment insertEvent, Model model){
	    	logger.error("insertEvent 정보.."+insertEvent);
	    	String storeCodeStr = insertEvent.getStoreCodeStr();
	    	insertEvent.setStoreCode(Integer.parseInt(storeCodeStr));
	    	int result = eventService.registEvent(insertEvent);
	    	
	    	if(result >0){
	    		model.addAttribute("insertEvent", true);
	    	}
	    	else{
	    		model.addAttribute("insertEvent", false);
	    	}
	    	logger.error("인서트 이벤트 종료");
			return "redirect:/info#tab3";
		}
	    
	    @RequestMapping(value="/info/update_event", method=RequestMethod.POST)
		public String updateOwner(@ModelAttribute("event1") All updateEvent, Model model){
	    	logger.error("updateEvent 정보.."+updateEvent);
	    	
	    	SimpleDateFormat sdf = new SimpleDateFormat("20yy년 MM월 dd일 HH시 mm분 ss초");
			Date startDate = new Date();
			Date endDate = new Date();
			try {
				startDate = sdf.parse(updateEvent.getStartDateStr());
				endDate = sdf.parse(updateEvent.getEndDateStr());
				updateEvent.setStartDate(startDate);
				updateEvent.setEndDate(endDate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	int result = eventService.modifyEvent(updateEvent);
	    	if(result >0){
	    		model.addAttribute("updateEvent", true);
	    	}
	    	else{
	    		model.addAttribute("updateEvent", false);
	    	}
	    	logger.error("업데이트 이벤트 종료");
	    	//마이페이지에서 updateSuccess가 true면 처음 들어갈때 if로 확인하여 alert 띄우기..
			return "redirect:/info#tab3";
		}
	    
	    @RequestMapping(value="/info/owner/coupon", method=RequestMethod.POST)
		public String showOwnerCouponPage(HttpSession session, Model model){
	    	All loginOwner = (All)(session.getAttribute("loginOwner"));
	    	List<All> allCoupon = couponService.getCouponsByUserId(loginOwner.getOwnerId());
	    	logger.error("여기는 showOwnerCouponPage");
	    	logger.trace("수업:"+allCoupon);
	    	
	    	model.addAttribute("allCoupon",allCoupon);
			return "info/owner";
		}
	    
	    @RequestMapping(value="/test", method=RequestMethod.POST)
		public String test(HttpSession session, Model model){
	    	
			return "info/test";
		}
	    
	    
	    
	    
		   /* @RequestMapping(value="/info/owner/update_store", method=RequestMethod.GET)
			public ModelAndView updateOwnerStore(){
		    	return new ModelAndView("ajax", "message", "Crunchify Spring MVC with Ajax and JQuery Demo..");
			}
		    
		    @RequestMapping(value="/info/owner/update_store", method=RequestMethod.GET, 
					produces="text/plain;charset=utf-8")
			public @ResponseBody Stores ajaxReceive(@ModelAttribute Stores store, HttpSession session,Model model){
		    	All loginOwner = (All)(session.getAttribute("loginOwner"));
		    	boolean isUpdated = storeService.updateStore(store);
		    	//List<All> stores = storeService.showAllStore(); //전제 다 출력하지말고 바꾼부분만 바꿔서 출력해볼까..
		    	if(isUpdated == true){
		    		model.addAttribute("stores",stores);
		    	}
		    	model.addAttribute("updatedStore", store);
				return store;
			}*/
		    
		   /* @RequestMapping(value="/info/owner/update_store", method=RequestMethod.GET, 
					produces="text/plain;charset=utf-8")
			public @ResponseBody Stores updateStoreAjax(@ModelAttribute Stores stores, Model model){
		    	JSONObject jsonObj = new JSONObject();
		    	
		    	jsonObj.get("storeCode");
		    	
		    	
		    	
		    	String storeCode = req.getParameter("storeCode");
		    	String storeName = req.getParameter("storeName");
		    	String storeAdress = req.getParameter("storeAdress");
		    	String storePhone = req.getParameter("storephone");
		    	String ownerId = req.getParameter("ownerId");
		    	String regionName = req.getParameter("regionName");	    	
		    	String typeName = req.getParameter("typeName");
		    	String starPoint = req.getParameter("starPoint");
		    	
		    	Stores store = new Stores(Integer.parseInt(storeCode), storeName, storeAdress, 
		    			storePhone, ownerId, regionName, typeName, Integer.parseInt(starPoint));

		    	
		    	boolean isUpdated = storeService.updateStore(store);
		    	//List<All> stores = storeService.showAllStore(); //전제 다 출력하지말고 바꾼부분만 바꿔서 출력해볼까..
		    	if(isUpdated == true){
		    		model.addAttribute("store",store);
		    	}
		    	model.addAttribute("updatedStore", store);
				return store;
			}*/
		    
	    
		
		
	
}
