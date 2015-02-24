package joojoo.dao;

import java.util.List;

import joojoo.entity.All;
import joojoo.entity.Coupon;



public interface CouponDao {
	
	int insertCoupon(Coupon coupon);
	int updateCoupon(All coupon);
	int updateCouponByEndDate();
	int deleteCoupon(String couponCode);
	All getCouponsByCouponCode(String couponCode);
	List<All> getCouponsByUserId(String userId);
	List<All> getCouponsByOwnerId(String ownerId);
	List<All> getCouponsByCommentCode(int commentCode);
	List<All> getCouponsByStatus(String couponStatus);
	List<All> getCouponsByStatusAndUserId(Coupon coupon);
	
}
