package joojoo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import joojoo.entity.Coupon;

public class CouponDaoImpl implements CouponDao{
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	private final String nameSpace = "joojoo.mapper.CouponMapper.";

	@Override
	public int insertCoupon(Coupon coupon) {
		String statement = nameSpace + "insertCoupon";
		int result = sqlSession.insert(statement, coupon);
		
		return result;
	}

	@Override
	public int updateDepartment(Coupon coupon) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteDepartment(String couponCode) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Coupon> getCouponsByUserId(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Coupon> getCouponsByOwnerId(String ownerId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Coupon> getCouponsByStatus(String couponStatus) {
		// TODO Auto-generated method stub
		return null;
	}

}
