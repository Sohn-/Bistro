package joojoo.dao;

import java.util.List;

import joojoo.entity.All;
import joojoo.entity.Coupon;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
	public int updateCoupon(All coupon) {
		String statement = nameSpace + "updateCoupon";
		int result = sqlSession.update(statement, coupon);
		
		logger.trace("updateCoupon종료...");
		return result;
	}

	@Override
	public int deleteCoupon(String couponCode) {
		String statement = nameSpace + "deleteCoupon";
		int result = sqlSession.delete(statement, couponCode);
		
		logger.trace("deleteCoupon종료...");
		return result;
	}

	@Override
	public List<All> getCouponsByUserId(String userId) {
		String statement = nameSpace + "getCouponByUserId";
		List<All> result = sqlSession.selectList(statement, userId);
		
		return result;
	}

	@Override
	public List<All> getCouponsByOwnerId(String ownerId) {
		String statement = nameSpace + "getCouponByOwnerId";
		List<All> result = sqlSession.selectList(statement, ownerId);
		
		return result;
	}
	
	@Override
	public List<All> getCouponsByCommentCode(int commentCode) {
		String statement = nameSpace + "getCouponsByCommentCode";
		List<All> result = sqlSession.selectList(statement, commentCode);
		
		return result;
	}

	@Override
	public List<All> getCouponsByStatus(String couponStatus) {
		String statement = nameSpace + "getCouponByStatus";
		List<All> result = sqlSession.selectList(statement, couponStatus);
		
		return result;
	}

	@Override
	public All getCouponsByCouponCode(String couponCode) {
		String statement = nameSpace + "getCouponsByCouponCode";
		All result = sqlSession.selectOne(statement, couponCode);
		
		return result;
	}

	

}

