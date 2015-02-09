package joojoo.dao;

import java.util.List;

import joojoo.entity.Coupon;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

public class CouponDaoImpl implements CouponDao{
	static final Logger logger = LoggerFactory.getLogger(CouponDaoImpl.class);
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
		String statement = nameSpace + "updateCoupon";
		int result = sqlSession.update(statement, coupon);
		/*if(true){
			throw new ServiceFailException("무조건 실패한다");
		}*/
		logger.trace("updateDepartment종료...");
		return result;
	}

	@Override
	public int deleteDepartment(String couponCode) {
		String statement = nameSpace + "deleteCoupon";
		int result = sqlSession.delete(statement, couponCode);
		return result;
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
