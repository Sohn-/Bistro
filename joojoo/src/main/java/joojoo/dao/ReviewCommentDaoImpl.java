package joojoo.dao;

import java.util.List;

import joojoo.entity.ReviewComment;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

public class ReviewCommentDaoImpl implements ReviewCommentDao {

	static final Logger logger = LoggerFactory
			.getLogger(ReviewCommentDaoImpl.class);
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;

	private final String nameSpace = "joojoo.mapper.ReviewCommentMapper.";

	@Override
	public int insertReviewComment(ReviewComment reviewComment) {
		String statement = nameSpace + "insertReviewComment";
		int result = sqlSession.insert(statement, reviewComment);
		return result;
	}

	@Override
	public int updateReviewComment(ReviewComment reviewComment) {
		String statement = nameSpace + "updateReviewComment";
		int result = sqlSession.update(statement, reviewComment);
		return result;
	}

	@Override
	public int deleteReviewComment(int commentCode) {
		String statement = nameSpace + "deleteReviewComment";
		int result = sqlSession.delete(statement, commentCode);
		return result;
	}

	@Override
	public List<ReviewComment> getReviewCommentsByUserId(String userId) {
		String statement = nameSpace + "getReviewCommentsByUserId";
		List<ReviewComment> result = sqlSession.selectList(statement, userId);
		
		return result;
	}

	@Override
	public List<ReviewComment> getReviewCommentsByStoreCode(String storeCode) {
		String statement = nameSpace + "getReviewCommentsByStoreCode";
		List<ReviewComment> result = sqlSession.selectList(statement, storeCode);		
		return result;
	}

	@Override
	public List<ReviewComment> getReviewCommentsBySearchKeyword(String keyword) {
		String statement = nameSpace + "getReviewCommentsBySearchKeyword";
		List<ReviewComment> result = sqlSession.selectList(statement, keyword);		
		return result;
	}

}
