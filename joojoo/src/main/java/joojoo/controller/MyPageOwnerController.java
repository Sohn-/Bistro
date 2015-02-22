package joojoo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import joojoo.entity.All;
import joojoo.entity.Stores;
import joojoo.entity.Users;
import joojoo.service.CouponService;
import joojoo.service.EventCommentService;
import joojoo.service.OwnerService;
import joojoo.service.StoreService;
import joojoo.service.UserService;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class MyPageOwnerController {
	static final Logger LOG = LoggerFactory
			.getLogger(JoinController.class);
	
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
		public String showInfoControl(Model model,HttpSession session){
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
	    		
	    		///이벤트글조회를 위한 코드
	    		List<All> allEvent = eventService.SeachMyEvent(ownerId);
		    	LOG.error("여기는 showOwnerEventPage");
				LOG.trace("수업:"+allEvent);
		    	
		    	model.addAttribute("allEvent",allEvent);
	    		path = "info/owner";
	    		///이벤트글조회를 위한 코드 끝
	    		
	    		///쿠폰조회를 위한 코드
	    		List<All> allCoupon = couponService.getCouponsByOwnerId(loginOwner.getOwnerId());
		    	LOG.error("여기는 showOwnerCouponPage");
				LOG.trace("수업:"+allCoupon);
		    	
		    	model.addAttribute("allCoupon",allCoupon);
	    		///쿠폰조회를 위한 코드 끝
	    		
		    	path = "info/owner";
	    	}


	    	else if(loginUserObj != null){
	    		All loginUser = (All)loginUserObj;
	    		String userId = loginUser.getUserId();
	    		path ="info/user";

	    	}
	    	
	    	else{	//로그인이 안된경우는 JSP에서 처리..
	    		path="info/member_null";
	    		
	    	}
			return path;
			
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
	    
	    @RequestMapping(value="/info/owner/coupon", method=RequestMethod.POST)
		public String showOwnerCouponPage(HttpSession session, Model model){
	    	All loginOwner = (All)(session.getAttribute("loginOwner"));
	    	List<All> allCoupon = couponService.getCouponsByUserId(loginOwner.getOwnerId());
	    	LOG.error("여기는 showOwnerCouponPage");
			LOG.trace("수업:"+allCoupon);
	    	
	    	model.addAttribute("allCoupon",allCoupon);
			return "info/owner";
		}
	    
		
		
	
}
