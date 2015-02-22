package joojoo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import joojoo.entity.All;
import joojoo.entity.Users;

import joojoo.service.CouponService;
import joojoo.service.OwnerService;
import joojoo.service.StoreService;
import joojoo.service.UserService;
import joojoo.service.WishListService;

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
	    
	    @Autowired
	    private WishListService wishListService;
	    
	    @RequestMapping(value="/info/user", method=RequestMethod.GET)
		public String showInfoPage(Model model,HttpSession session){
	    	
	    	
	    	model.addAttribute("updateUser", new Users());
	    	
	    	LOG.trace("수업 로그인 유저 세션정보"+session.getAttribute("loginUser").toString());
	    	
	    	
	    	
	    	//<---------wishList--------->
	    	String loginUserId = ((All)session.getAttribute("loginUser")).getUserId();
	    	List<All> wishLists = wishListService.showAllWishList(loginUserId);
	    	model.addAttribute("wishList",wishLists);
	    	LOG.trace("수업"+wishLists);
	    	
			return "info/user";
	    	
		}
	    
	    
	    @RequestMapping(value="/info/member/update", method=RequestMethod.POST)
		public String updateUserInfo(@ModelAttribute("updateUser") Users updateUser,
										
				
				Model model,HttpSession session){
	    	
	    	LOG.trace("수업 "+updateUser);
	    	userService.updateUserInfo(updateUser);
	    	//WebUtils.setSessionAttribute(session, "userSession", user);
	    	LOG.trace("수업2 세션 업뎃 전"+session.getAttribute("loginUser").toString());
	    	session.removeAttribute("loginUser");
	    	session.setAttribute("loginUser", updateUser);
	    	LOG.trace("수업3 세션 업뎃 후"+session.getAttribute("loginUser").toString());
	    	
	    	
	    	
	    	
	    	
	    	return "redirect:/info/user";
		}
	    
	  
	    
	  
	   
	  
	    
	
	
}
