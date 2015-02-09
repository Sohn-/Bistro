package joojoo.dao;

import java.util.List;

import joojoo.entity.Coupon;



public interface CouponDao {
	
	int insertCoupon(Coupon coupon);
	int updateDepartment(Coupon coupon);
	int deleteDepartment(String couponCode);
	List<Coupon> getCouponsByUserId(String userId);
	List<Coupon> getCouponsByOwnerId(String ownerId);
	List<Coupon> getCouponsByStatus(String couponStatus);

}