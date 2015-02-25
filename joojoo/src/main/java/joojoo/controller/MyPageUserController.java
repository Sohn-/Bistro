package joojoo.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import joojoo.entity.All;
import joojoo.entity.Coupon;
import joojoo.entity.Users;
import joojoo.service.CouponService;
import joojoo.service.EventCommentService;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
@Controller
/*@SessionAttributes({"loginUser","loginOwner"})*/
public class MyPageUserController {
	
		static final Logger LOG = LoggerFactory
				.getLogger(MyPageUserController.class);
		
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
	    
	    @Autowired
	    private EventCommentService eventCommentService;
	    
	    @RequestMapping(value="/info/user", method=RequestMethod.GET)
		public String showInfoPage(Model model,HttpSession session){
	    	
	    	
	    	Object loginUserObj = session.getAttribute("loginUser");
	    	
	    	
	    	All loginUser = (All)loginUserObj;
	    	String userId = loginUser.getUserId();
	    	///업주정보수정을 위한 코드
    		All updateUser = userService.getUserInfo(userId);
    		model.addAttribute("updateUser", updateUser);
	    	
	    	//LOG.trace("수업 로그인 유저 세션정보"+session.getAttribute("loginUser").toString());
	    	
	    	
	    	
	    	
	    	String loginUserId = loginUser.getUserId();
	    	
	    	//<---------wishList--------->
	    	List<All> wishLists = wishListService.showAllWishList(loginUserId);
	    	model.addAttribute("wishList",wishLists);
	    	
	    	//<------coupon---->
	    	//1.미사용
	    	Coupon coupon = new Coupon();
	    	coupon.setUserId(loginUserId);
	    	
	    	coupon.setCouponStatus("미사용");
	    	List<All> nonUsedCoupons = couponService.getCouponsByUserIdAndStatus(coupon);
	    	model.addAttribute("nonUsedCoupons", nonUsedCoupons);
	    	//2.사용
	    	coupon.setCouponStatus("사용");
	    	List<All> usedCoupons = couponService.getCouponsByUserIdAndStatus(coupon);
	    	model.addAttribute("usedCoupons", usedCoupons);
	    	
	    	//3.환불
	    	coupon.setCouponStatus("환불");
	    	List<All> refundCoupons = couponService.getCouponsByUserIdAndStatus(coupon);
	    	model.addAttribute("refundCoupons", refundCoupons);
	    	
	    	//4.기간만료
	    	coupon.setCouponStatus("기간만료");
	    	List<All> timeOverCoupons = couponService.getCouponsByUserIdAndStatus(coupon);
	    	model.addAttribute("timeOverCoupons", timeOverCoupons);
	    	
	    	
			return "info/user";
	    	
		}
	    
	    @RequestMapping(value="/info/user/wishList/delete", method=RequestMethod.GET)
		public String deleteWishList(String checked_wishListCodes, Model model,HttpSession session){
	    	
	    	
	    	List<String> result = Arrays.asList(checked_wishListCodes.split(","));
	    	for(int i=0; i<result.size(); i++){
	    		int delete_no = Integer.parseInt(result.get(i));
	    		wishListService.deleteWishList(delete_no);
	    	}
	    
			return "redirect:/info/user";
	    	
		}
	    
	    @RequestMapping(value="/info/user/wishList/buy", method=RequestMethod.GET)
		public String buyWishList(String checked_wishListCodes, Model model,HttpSession session){
	    	
	    	String loginUserId = ((All)session.getAttribute("loginUser")).getUserId();
	    	List<String> result = Arrays.asList(checked_wishListCodes.split(","));
	    	for(int i=0; i<result.size(); i++){
	    		int buy_no = Integer.parseInt(result.get(i));
	    		
	    		All buy_info = wishListService.getCommentCodeBywishListCode(buy_no);
	    		int comment_code = buy_info.getCommentCode();
	    		
	    		wishListService.deleteWishList(buy_no);
	    		couponService.buyCoupon(loginUserId, comment_code);
	    		
	    		
	    		
	    	}
	    
			return "redirect:/info/user";
	    	
		}
	    
	    
	    @RequestMapping(value="/info/user/update", method=RequestMethod.POST)
		public String updateUserInfo(@ModelAttribute("updateUser") Users updateUser,
				Model model,HttpSession session){
	    	
	    	
	    	
	    	
	    	
	    	int result = userService.updateUserInfo(updateUser);
	    	if(result >0){
	    		model.addAttribute("updateUser", true);
	    	}
	    	else{
	    		model.addAttribute("updateUser", false);
	    	}
	    	
			return "redirect:/info#tab1";
	    	
	    	
	    	/*
	    	LOG.error("수업 "+updateUser);
	    	userService.updateUserInfo(updateUser);
	    	//WebUtils.setSessionAttribute(session, "userSession", user);
	    	LOG.trace("수업2 세션 업뎃 전"+session.getAttribute("loginUser").toString());
	    	session.setAttribute("loginUser", updateUser);
	    	LOG.trace("수업3 세션 업뎃 후"+session.getAttribute("loginUser").toString());
	    	
	    	
	    	
	    	
	    	
	    	return "redirect:/info";
	    	*/
		}
	    
	  
	    
	  
	   
	  
	    
	
	
}
