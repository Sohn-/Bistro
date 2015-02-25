package joojoo.service;

import java.util.List;

import joojoo.entity.All;
import joojoo.entity.Coupon;
import joojoo.entity.EventComment;

public interface CouponService {
	
	List<All> getCouponsByUserId(String userId); //일반 내 쿠폰 조회, 쿠폰 상세 조회	
	
	List<All> getCouponsByOwnerId(String ownerId); //업주 내 쿠폰 조회, 쿠폰 상세 조회	
	
	int insertCoupon(Coupon coupon);//쿠폰 발행 [업주 유저아이디 null]
	
	int useCoupon(All coupon);
	
	int buyCoupon(String userId, int comment_code); //쿠폰 구입[일반 유저아이디 넣음]
	
	int refundCoupon(String couponCode); //쿠폰 환불[일반 쿠폰상태 변경]
	
	int checkCoupon(String couponCode);//쿠폰 사용[업주 쿠폰상태 변경]
	
	int timeoverCoupon(); //쿠폰 기간 만료[마이페이지 출력 전에 업데이트]
	
	List<All> getCouponsByUserIdAndStatus(Coupon coupon);
	
	All getCouponByCouponCode(String couponCode);
	
	int publishCoupons(int couponCount,int commentCode);
	
	int leftCouponCount(int comment_code);
	
	int getPublishedCouponCount(int comment_code);

}
