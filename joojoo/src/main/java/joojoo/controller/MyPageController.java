package joojoo.controller;

import java.util.List;

import joojoo.entity.All;
import joojoo.service.CouponService;
import joojoo.service.OwnerService;
import joojoo.service.StoreService;
import joojoo.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class MyPageController {
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
	    
	    @RequestMapping(value="/info/member", method=RequestMethod.GET)
		public String showInfoPage(Model model){
	    	
			return "info/member";
		}
	    
	    @RequestMapping(value="/info/member/user", method=RequestMethod.GET)
		public String showUserInfoPage(Model model,@RequestParam("userId") String userId){
	    	List<All> couponInfo = couponService.getCouponsByUserId(userId);
			model.addAttribute("couponInfo",couponInfo);
			return "info/member_user";
		}
	
	
}
