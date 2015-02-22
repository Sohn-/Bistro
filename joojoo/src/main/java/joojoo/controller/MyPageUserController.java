package joojoo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import joojoo.entity.All;
import joojoo.entity.Coupon;
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
	    	
	    	
	    	
	    	
	    	String loginUserId = ((All)session.getAttribute("loginUser")).getUserId();
	    	
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
	    	//LOG.trace("수업"+n);
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
	    
	    @RequestMapping(value="/info/user/wishList/delete", method=RequestMethod.POST)
		public String deleteWishList(@ModelAttribute String del_wishListCodes, Model model,HttpSession session){
	    	
	    	LOG.trace("수업"+del_wishListCodes);
	    	//받은 코멘트 코드 넘버로 지우기...해야함 
			return "redirect:/info/user";
	    	
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
