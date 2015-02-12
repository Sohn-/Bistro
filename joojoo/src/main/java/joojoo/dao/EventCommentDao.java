package joojoo.dao;

import java.util.List;

import joojoo.entity.All;
import joojoo.entity.Category;
import joojoo.entity.EventComment;



public interface EventCommentDao {
	
	int insertEventComment(EventComment eventComment);
	int updateEventComment(EventComment eventComment);
	int deleteEventComment(int commentCode);
	
	List<EventComment> getEventCommentsByOwnerId(String ownerId);
	EventComment getEventCommentByCommentCode(int commentCode);
	
	List<EventComment> getAllEventComments();
	List<EventComment> getEventCommentsByKeyword(Category category);
	
	//int regionCode, int typeCode, int personsCode, int serviceTypeCode
	//List<EventComment> getEventCommentsByCategory(Category category);
	List<All> getEventCommentsByCategory(Category category);
	
	List<EventComment> getEventCommentsByRegionCode(int regionCode);
	List<EventComment> getEventCommentsByTypeCode(int typeCode);
	List<EventComment> getEventCommentsByPersonsCode(int personsCode);
	List<EventComment> getEventCommentsByServiceTypeCode(int serviceTypeCode);
	

}
