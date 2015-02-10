package joojoo.dao;

import java.util.List;

import joojoo.entity.Category;
import joojoo.entity.EventComment;
import joojoo.entity.RviewComment;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RviewCommentDaoImpl implements RviewCommentDao{
	static final Logger logger = LoggerFactory.getLogger(RviewCommentDaoImpl.class);
	@Autowired
	//@Qualifier("sqlSessionTemplate")
	SqlSessionTemplate sqlSession;
	private final String nameSpace = "joojoo.mapper.RviewCommentMapper.";
	
	@Override
	public int insertRviewComment(RviewComment rviewComment) {
		String statement = nameSpace + "insertRviewComment";
		int result = sqlSession.insert(statement, rviewComment);
		
		logger.trace("insertRviewComment종료...");
		
		return result;
	}

	@Override
	public int updateRviewComment(RviewComment rviewComment) {
		String statement = nameSpace + "updateRviewComment";
		int result = sqlSession.update(statement, rviewComment);
		
		logger.trace("updateRviewComment종료...");
		return result;
	}

	@Override
	public int deleteRviewComment(int commentCode) {
		String statement = nameSpace + "deleteRviewComment";
		int result = sqlSession.delete(statement, commentCode);
		
		logger.trace("deleteRviewComment종료...");
		return result;
	}

	@Override
	public List<RviewComment> getRviewCommentsByUserId(String userId) {
		String statement = nameSpace + "getRviewCommentsByUserId";
		List<RviewComment> result = sqlSession.selectList(statement, userId);
		
		return result;
	}

	@Override
	public List<RviewComment> getRviewCommentsByStoreCode(int storeCode) {
		String statement = nameSpace + "getRviewCommentsByStoreCode";
		List<RviewComment> result = sqlSession.selectList(statement, storeCode);
		
		return result;
	}

	@Override
	public List<RviewComment> getRviewCommentsByKeyword(Category category) {
		String statement = nameSpace + "getRviewCommentsByKeyword";
		List<RviewComment> result = sqlSession.selectList(statement, category);
		
		return result;
	}

	@Override
	public List<RviewComment> getRviewCommentsByUserName(String userName) {
		String statement = nameSpace + "getRviewCommentsByUserName";
		List<RviewComment> result = sqlSession.selectList(statement, userName);
		
		return result;
	}

	@Override
	public List<RviewComment> getRviewCommentsByContent(String content) {
		String statement = nameSpace + "getRviewCommentsByContent";
		List<RviewComment> result = sqlSession.selectList(statement, content);
		
		return result;
	}

	@Override
	public List<RviewComment> getRviewCommentsByTitle(String title) {
		String statement = nameSpace + "getRviewCommentsByTitle";
		List<RviewComment> result = sqlSession.selectList(statement, title);
		
		return result;
	}

	@Override
	public List<EventComment> getAllRviewComments() {
		String statement = nameSpace + "getAllRviewComments";
		List<EventComment> result = sqlSession.selectList(statement);
		
		return result;
	}
}
