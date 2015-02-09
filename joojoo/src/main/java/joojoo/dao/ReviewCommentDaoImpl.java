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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteReviewComment(int commentCode) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ReviewComment> getReviewCommentsByUserId(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewComment> getReviewCommentsByStoreCode(String storeCode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewComment> getReviewCommentsBySearchKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

}
