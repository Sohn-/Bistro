package joojoo.dao;

import java.util.List;

import joojoo.entity.All;
import joojoo.entity.Category;
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
	public List<All> getRviewCommentsByUserId(String userId) {
		String statement = nameSpace + "getRviewCommentsByUserId";
		List<All> result = sqlSession.selectList(statement, userId);
		
		return result;
	}

	@Override
	public List<All> getRviewCommentsByStoreCode(int storeCode) {
		String statement = nameSpace + "getRviewCommentsByStoreCode";
		List<All> result = sqlSession.selectList(statement, storeCode);
		
		return result;
	}

	@Override
	public List<All> getRviewCommentsByKeyword(Category category) {
		String statement = nameSpace + "getRviewCommentsByKeyword";
		List<All> result = sqlSession.selectList(statement, category);
		
		return result;
	}

	@Override
	public List<All> getRviewCommentsByUserName(String userName) {
		String statement = nameSpace + "getRviewCommentsByUserName";
		List<All> result = sqlSession.selectList(statement, userName);
		
		return result;
	}

	@Override
	public List<All> getRviewCommentsByContent(String content) {
		String statement = nameSpace + "getRviewCommentsByContent";
		List<All> result = sqlSession.selectList(statement, content);
		
		return result;
	}

	@Override
	public List<All> getRviewCommentsByTitle(String title) {
		String statement = nameSpace + "getRviewCommentsByTitle";
		List<All> result = sqlSession.selectList(statement, title);
		
		return result;
	}

	@Override
	public List<All> getAllRviewComments() {
		String statement = nameSpace + "getAllRviewComments";
		List<All> result = sqlSession.selectList(statement);
		
		return result;
	}

	@Override
	public List<All> getRviewCommentsByStoreName(String storeName) {
		String statement = nameSpace + "getRviewCommentsByStoreName";
		List<All> result = sqlSession.selectList(statement,storeName);
		
		return result;
	}

	@Override
	public All getRviewCommentByCommentCode(int commentCode) {
		String statement = nameSpace + "getRviewCommentByCommentCode";
		All result = sqlSession.selectOne(statement,commentCode);
		
		return result;
	}
}
