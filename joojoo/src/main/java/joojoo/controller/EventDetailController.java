package joojoo.controller;

import javax.servlet.http.HttpSession;

import joojoo.entity.All;
import joojoo.entity.Users;
import joojoo.entity.WishList;
import joojoo.service.CouponService;
import joojoo.service.EventCommentService;
import joojoo.service.UserService;
import joojoo.service.WishListService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EventDetailController {
	static final Logger logger = LoggerFactory
			.getLogger(EventDetailController.class);
	@Autowired
	EventCommentService eventService;
	
	@Autowired
	CouponService couponService;
	
	@Autowired
	WishListService wishListService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/eventProcess", method=RequestMethod.GET)
	public String showDetail(@RequestParam("eventCommentCode") int eventCommentCode, Model model){
		
		All eventDetail = eventService.SearchOneEvent(eventCommentCode);
		model.addAttribute("eventDetail", eventDetail);
		logger.error("eventDetail 확인---------------------"+eventDetail);
		
		return "event/event_detail";
	}
	
	/*/buy_coupon?ecommentCode=${eventDetail.commentCode }*/
	@RequestMapping(value="/buy_coupon", method=RequestMethod.GET, params={"ecommentCode"} )
	public String couponBuy(String ecommentCode, HttpSession session){
		
		logger.error(""+ecommentCode);
		All loginUser =(All) session.getAttribute("loginUser");
		String userId = loginUser.getUserId();
		
		
		
		int ecommentCode2 = Integer.parseInt(ecommentCode);
		couponService.buyCoupon(userId, ecommentCode2);
		int currentChace = loginUser.getChance();
		
		
		Users u = new Users();
		u.setUserId(userId);
		u.setChance(currentChace-1);
		
		
		
		userService.updateUserChance(u);
		
		
		return "redirect:/info"; //파라매터 줘야되나?
	}
	/*/info/user/cart/add?ecommentCode=${eventDetail.commentCode }*/
	
	@RequestMapping(value="/info/user/cart/add", method=RequestMethod.GET, params={"ecommentCode"} )
	public String addWishList(String ecommentCode, HttpSession session){
		
		logger.error(""+ecommentCode);
		All loginUser =(All) session.getAttribute("loginUser");
		String userId = loginUser.getUserId();
		
		
		
		int ecommentCode2 = Integer.parseInt(ecommentCode);
		
		WishList wishList = new WishList();
		wishList.setUserId(userId);
		wishList.setCommentCode(ecommentCode2);
		
		wishListService.addWishList(wishList);
		
		
		return "redirect:/info"; //파라매터 줘야되나?
	}
	/*@RequestMapping(value="/logi", method=RequestMethod.POST, 
			produces="text/plain;charset=utf-8")
	public @ResponseBody String ajaxReceive(@RequestParam String msg){
		logger.trace("흠 이게 되나");
		return "아이디와 비밀번호가 정확하지 않습니다.";
	}*/
}
