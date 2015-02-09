package joojoo.dao;

import java.util.List;

import joojoo.entity.Category;
import joojoo.entity.ReviewComment;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewCommentDaoImpl implements ReviewCommentDao{
	static final Logger logger = LoggerFactory.getLogger(ReviewCommentDaoImpl.class);
	@Autowired
	//@Qualifier("sqlSessionTemplate")
	SqlSessionTemplate sqlSession;
	private final String nameSpace = "joojoo.mapper.ReviewCommentMapper.";
	
	@Override
	public int insertReviewComment(ReviewComment reviewComment) {
		String statement = nameSpace + "insertReviewComment";
		int result = sqlSession.insert(statement, reviewComment);
		
		logger.trace("insertReviewComment종료...");
		
		return result;
	}

	@Override
	public int updateReviewComment(ReviewComment reviewComment) {
		String statement = nameSpace + "updateReviewComment";
		int result = sqlSession.update(statement, reviewComment);
		
		logger.trace("updateReviewComment종료...");
		return result;
	}

	@Override
	public int deleteReviewComment(int commentCode) {
		String statement = nameSpace + "deleteReviewComment";
		int result = sqlSession.delete(statement, commentCode);
		
		logger.trace("deleteReviewComment종료...");
		return result;
	}

	@Override
	public List<ReviewComment> getReviewCommentsByUserId(String userId) {
		String statement = nameSpace + "getReviewCommentsByUserId";
		List<ReviewComment> result = sqlSession.selectList(statement, userId);
		
		return result;
	}

	@Override
	public List<ReviewComment> getReviewCommentsByStoreCode(int storeCode) {
		String statement = nameSpace + "getReviewCommentsByStoreCode";
		List<ReviewComment> result = sqlSession.selectList(statement, storeCode);
		
		return result;
	}

	@Override
	public List<ReviewComment> getReviewCommentsBySearchKeyword(Category category) {
		String statement = nameSpace + "getReviewCommentsBySearchKeyword";
		List<ReviewComment> result = sqlSession.selectList(statement, category);
		
		return result;
	}
	

	
	/*@Override
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
	public List<EventComment> getEventCommentsByCategory(Category category) {
		String statement = nameSpace + "getEventCommentsByCategory";
		List<EventComment> result = sqlSession.selectList(statement, category);
		
		return result;
	}
	@Override
	public List<EventComment> getEventCommentsBySearchKeyword(Category category) {
		String statement = nameSpace + "getEventCommentsBySearchKeyword";
		List<EventComment> result = sqlSession.selectList(statement, category);
		
		return result;
	}
*/
}
