package joojoo.service;

import java.util.List;
import java.util.Map;

import joojoo.entity.Coupon;
import joojoo.entity.Users;

public interface CouponService {
	
	Integer getDeptCnt();

	Coupon getDepartmentById(int i);

	void updateDepartment(Department dept) throws ServiceFailException;
	
	Map<String, Object> getDepartmentByIdNoMapping(int i);
	
	Integer getDepartmentCountByLocationId(int i);
	
	List<Department> getAllDepartments();
	
	List<Department> getDepartmentsByManagerId(int i);
	
	List<Coupon> getCouponsByUserId(String userId); //내 쿠폰 조회, 쿠폰상세조회
	int updateCouponStatus(int couponStatusCode); //쿠폰 상태 변경
	int insertCoupon(Coupon coupon);//쿠폰 발행 유저아이디 null
	int buyCoupon(Users user); //쿠폰 구입
	
	
	

}
