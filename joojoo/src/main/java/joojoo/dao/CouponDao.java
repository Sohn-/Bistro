package joojoo.dao;

import java.util.List;

import joojoo.entity.Coupon;



public interface CouponDao {
	
	int insertCoupon(Coupon coupon);
	int updateCoupon(Coupon coupon);
	int deleteCoupon(String couponCode);
	Coupon getCouponsByCouponCode(String couponCode);
	List<Coupon> getCouponsByUserId(String userId);
	List<Coupon> getCouponsByOwnerId(String ownerId);
	List<Coupon> getCouponsByCommentCode(int commentCode);
	List<Coupon> getCouponsByStatus(int couponStatusCode);

}
