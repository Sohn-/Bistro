package joojoo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import joojoo.entity.All;
import joojoo.entity.Users;
import joojoo.service.CouponService;
import joojoo.service.EventCommentService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BuyCouponController {
	static final Logger logger = LoggerFactory
			.getLogger(BuyCouponController.class);
	@Autowired
	EventCommentService eventService;
	
	@Autowired
	CouponService couponService;
	
	@RequestMapping(value="/buy_coupon")
	public String showDetail(@RequestParam("eventCommentCode") int eventCommentCode, Model model, HttpSession session){
		String path = "login/login";
		
		Object loginUserObj = session.getAttribute("loginUser");
		if(loginUserObj == null){
			model.addAttribute("needLogin");	//로그인 안되어있으면 로그인이 필요함.
			
		}
		else{
			Users loginUser = (Users) loginUserObj;
			couponService.buyCoupon(loginUser.getUserId(), eventCommentCode);
			path = "event/event_detail";
		}
		
		return path;
	}
	
	@RequestMapping(value="/buy_check")
	public String checkBuy(@RequestParam("eventCommentCode") int eventCommentCode, Model model, HttpSession session){ //구매한건지 안한건지
		String path = "event_detail";
		
		Object loginUserObj = session.getAttribute("loginUser");
		if(loginUserObj == null){
			model.addAttribute("needLogin");	//로그인 안되어있으면 로그인이 필요함.
			
		}
		else{
			Users loginUser = (Users) loginUserObj;
			boolean isBuy = false;
			List<All> coupons = couponService.getCouponsByUserId(loginUser.getUserId());
			for(All coupon : coupons){
				if(coupon.getCommentCode() == eventCommentCode){
					isBuy=true;
					model.addAttribute("isBuy", isBuy);	//이미 구매한 구폰이면 check를 트루로
				}
			}
			path = "event/event_detail";
		}
		
		return path;
	}

}
