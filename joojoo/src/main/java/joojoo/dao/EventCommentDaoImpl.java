package joojoo.dao;

import java.util.List;

import joojoo.entity.Category;
import joojoo.entity.EventComment;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class EventCommentDaoImpl implements EventCommentDao{
	static final Logger logger = LoggerFactory.getLogger(EventCommentDaoImpl.class);
	@Autowired
	//@Qualifier("sqlSessionTemplate")
	SqlSessionTemplate sqlSession;
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

}
