package joojoo.service;

import java.util.List;

import joojoo.entity.Category;
import joojoo.entity.Coupon;
import joojoo.entity.EventComment;

public interface EventCommentService {
	
	List<EventComment> SeachByKeyword(String keyword); //키워드로 이벤트 검색
	List<EventComment> SeachByCategory(Category category); //카테고리 이벤트 검색
	List<EventComment> SeachMyEvent(String userId);
	
	
	List<Coupon> getCouponsByOwnerId(String ownerId); //업주 내 쿠폰 조회, 쿠폰 상세 조회	
	
	int insertCoupon(Coupon coupon);//쿠폰 발행 [업주 유저아이디 null]
	
	int buyCoupon(String userId, int comment_code); //쿠폰 구입[일반 유저아이디 넣음]
	
	int refundCoupon(String userId); //쿠폰 환불[일반 쿠폰상태 변경]
	
	int useCoupon(String ownerId);//쿠폰 사용[업주 쿠폰상태 변경]
	
	int timeoverCoupon(String userId); //쿠폰 기간 만료[마이페이지 출력 전에 업데이트]
	
	

}
