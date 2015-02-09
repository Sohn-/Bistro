package joojoo.dao;

import java.util.List;

import joojoo.entity.EventComment;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

//@Repository
public class EventCommentDaoImpl implements EventCommentDao{
	static final Logger logger = LoggerFactory.getLogger(EventCommentDaoImpl.class);
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	private final String nameSpace = "joojoo.mapper.EventCommentMapper.";

	
	@Override
	public int insertEventComment(EventComment eventComment) {
		String statement = nameSpace + "insertEventComment";
		int result = sqlSession.insert(statement, eventComment);
		
		logger.trace("insertEventComment종료...");
		
		return result;
	}
	@Override
	public int updateEventComment(EventComment eventComment) {
		String statement = nameSpace + "updateEventComment";
		int result = sqlSession.update(statement, eventComment);
		
		logger.trace("updateEventComment종료...");
		return result;
	}
	@Override
	public int deleteEventComment(int commentCode) {
		String statement = nameSpace + "deleteEventComment";
		int result = sqlSession.delete(statement, commentCode);
		
		logger.trace("deleteEventComment종료...");
		return result;
	}
	
	//int regionCode, int typeCode, int personsCode, int serviceTypeCode
	@Override
	public List<EventComment> getEventCommentsByCategory(EventComment eventComment) {
		String statement = nameSpace + "getEventCommentsByCategory";
		List<EventComment> result = sqlSession.selectList(statement, eventComment);
		
		return result;
	}
	@Override
	public List<EventComment> getEventCommentsBySearchKeyword(String keyword) {
		String statement = nameSpace + "getEventCommentsBySearchKeyword";
		List<EventComment> result = sqlSession.selectList(statement, keyword);
		
		return result;
	}
	
	
	

	/*@Override
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
	}*/

}
