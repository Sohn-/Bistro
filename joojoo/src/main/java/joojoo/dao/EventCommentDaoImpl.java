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
	public List<EventComment> getEventCommentsByKeyword(Category category) {
		String statement = nameSpace + "getEventCommentsByKeyword";
		List<EventComment> result = sqlSession.selectList(statement, category);
		
		return result;
	}
	
	//실제 카테고리별 검색을 위한 메서드들
	@Override
	public List<EventComment> getEventCommentsByRegionCode(int regionCode) {
		String statement = nameSpace + "getEventCommentsByRegionCode";
		List<EventComment> result = sqlSession.selectList(statement, regionCode);
		
		return result;
	}
	@Override
	public List<EventComment> getEventCommentsByTypeCode(int typeCode) {
		String statement = nameSpace + "getEventCommentsByTypeCode";
		List<EventComment> result = sqlSession.selectList(statement, typeCode);
		
		return result;
	}
	@Override
	public List<EventComment> getEventCommentsByPersonsCode(int personsCode) {
		String statement = nameSpace + "getEventCommentsByPersonsCode";
		List<EventComment> result = sqlSession.selectList(statement, personsCode);
		
		return result;
	}
	@Override
	public List<EventComment> getEventCommentsByServiceTypeCode(
			int serviceTypeCode) {
		String statement = nameSpace + "getEventCommentsByServiceTypeCode";
		List<EventComment> result = sqlSession.selectList(statement, serviceTypeCode);
		
		return result;
	}
	@Override
	public List<EventComment> getAllEventComments() {
		String statement = nameSpace + "getAllEventComments";
		List<EventComment> result = sqlSession.selectList(statement);
		
		return result;
	}
	@Override
	public List<EventComment> getEventCommentsByOwnerId(String ownerId) {
		String statement = nameSpace + "getEventCommentsByOwnerId";
		List<EventComment> result = sqlSession.selectList(statement, ownerId);
		
		return result;
	}
	@Override
	public EventComment getEventCommentByCommentCode(int commentCode) {
		String statement = nameSpace + "getEventCommentByCommentCode";
		EventComment result = sqlSession.selectOne(statement, commentCode);
		
		return result;
	}

}
