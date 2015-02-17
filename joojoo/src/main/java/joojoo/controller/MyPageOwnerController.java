package joojoo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import joojoo.entity.All;
import joojoo.entity.Stores;
import joojoo.service.CouponService;
import joojoo.service.OwnerService;
import joojoo.service.StoreService;
import joojoo.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	    
	    @RequestMapping(value="/info", method=RequestMethod.GET)
		public String showInfoControl(Model model,HttpSession session){
	    	String path = null;
	    	
	    	Object loginOwner = session.getAttribute("loginOwner");
	    	Object loginUser = session.getAttribute("loginUser");
	    	
	    	if(loginOwner != null){
	    		path = "info/owner";
	    	}
	    	else if(loginUser != null){
	    		path ="info/user";
	    	}
	    	
	    	else{	//로그인이 안된경우는 JSP에서 처리..
	    		path="info/member_null";
	    		
	    	}
			return path;
			
		}
	    @RequestMapping(value="/info/owner/update_store", method=RequestMethod.POST)
		public String updateOwnerStore(){
	    	
			return "info/owner";
		}
	    
	    @RequestMapping(value="/info/owner/update_store", method=RequestMethod.POST, 
				produces="text/plain;charset=utf-8")
		public @ResponseBody List<All> ajaxReceive(@ModelAttribute Stores store, HttpSession session,Model model){
	    	All loginOwner = (All)(session.getAttribute("loginOwner"));
	    	boolean isUpdated = storeService.updateStore(store);
	    	List<All> stores = storeService.showAllStore(); //전제 다 출력하지말고 바꾼부분만 바꿔서 출력해볼까..
	    	if(isUpdated == true){
	    		model.addAttribute("stores",stores);
	    	}
	    	
			return stores;
		}
	    
	    @RequestMapping(value="/info/owner/coupon", method=RequestMethod.GET)
		public String showOwnerCouponPage(HttpSession session,Model model){
	    	All loginOwner = (All)(session.getAttribute("loginOwner"));
	    	List<All> allCoupon = couponService.getCouponsByUserId(loginOwner.getOwnerId());
			LOG.trace("수업:"+allCoupon);
	    	
	    	model.addAttribute("allCoupon",allCoupon);
			return "info/owner/coupon";
		}
	    
		
		
	
}
