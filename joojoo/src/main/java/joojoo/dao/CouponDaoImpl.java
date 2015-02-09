package joojoo.dao;

import java.util.List;

import joojoo.entity.Coupon;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class CouponDaoImpl implements CouponDao{
	static final Logger logger = LoggerFactory.getLogger(CouponDaoImpl.class);
	@Autowired
	//@Qualifier("sqlSessionTemplate")
	SqlSessionTemplate sqlSession;
	
	private final String nameSpace = "joojoo.mapper.CouponMapper.";

	@Override
	public int insertCoupon(Coupon coupon) {
		String statement = nameSpace + "insertCoupon";
		int result = sqlSession.insert(statement, coupon);
		
		logger.trace("insertCoupon종료...");
		
		return result;
	}

	@Override
	public int updateDepartment(Coupon coupon) {
		String statement = nameSpace + "updateCoupon";
		int result = sqlSession.update(statement, coupon);
		
		logger.trace("updateDepartment종료...");
		return result;
	}

	@Override
	public int deleteDepartment(String couponCode) {
		String statement = nameSpace + "deleteCoupon";
		int result = sqlSession.delete(statement, couponCode);
		
		logger.trace("updateDepartment종료...");
		return result;
	}

	@Override
	public List<Coupon> getCouponsByUserId(String userId) {
		String statement = nameSpace + "getCouponByUserId";
		List<Coupon> result = sqlSession.selectList(statement, userId);
		
		return result;
	}

	@Override
	public List<Coupon> getCouponsByOwnerId(String ownerId) {
		String statement = nameSpace + "getCouponByOwnerId";
		List<Coupon> result = sqlSession.selectList(statement, ownerId);
		
		return result;
	}

	@Override
	public List<Coupon> getCouponsByStatus(int couponStatusCode) {
		String statement = nameSpace + "getCouponByStatus";
		List<Coupon> result = sqlSession.selectList(statement, couponStatusCode);
		
		return result;
	}

}
