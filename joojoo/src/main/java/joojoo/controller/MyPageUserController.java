package joojoo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import joojoo.entity.All;
import joojoo.entity.Users;
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
import org.springframework.web.bind.annotation.SessionAttributes;
@Controller
@SessionAttributes({"loginUser","loginOwner"})
public class MyPageUserController {
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
		public String showInfoPage(Model model,HttpSession session){
	    	
	    	if(session.getAttribute("loginUser") ==null && session.getAttribute("loginOwner") ==null){
	    		return "info/member_null";
	    	}
	    	else if(session.getAttribute("loginUser") !=null){
	    	model.addAttribute("updateUser", new Users());		
			return "info/member_user";
	    	}
	    	else return "info/member_owner";
		}
	    
	    
	    @RequestMapping(value="/info/member/update", method=RequestMethod.POST)
		public String updateUserInfo(@ModelAttribute("updateUser") Users updateUser,Model model){
	    	
	    	LOG.trace("수업 "+updateUser);
	    	userService.updateUserInfo(updateUser);
	    	
	    	model.addAttribute("updateUser", updateUser);	
	    	return "info/updateUserInfo";
		}
	    
	  
	    
	  
	   
	  
	    
	
	
}
