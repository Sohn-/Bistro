package joojoo.dao;

import java.util.List;

import joojoo.entity.All;
import joojoo.entity.Category;
import joojoo.entity.EventComment;



public interface EventCommentDao {
	
	int insertEventComment(EventComment eventComment);
	int updateEventComment(All eventComment);
	int deleteEventComment(int commentCode);
	int deleteEventCommentByOwnerId(String ownerId);
	
	List<All> getEventCommentsByOwnerId(String ownerId);
	All getEventCommentByCommentCode(int commentCode);
	
	List<All> getAllEventComments();
	List<All> getEventCommentsByKeyword(Category category);
	
	//int regionCode, int typeCode, int personsCode, int serviceTypeCode
	//List<EventComment> getEventCommentsByCategory(Category category);
	List<All> getEventCommentsByCategory(Category category);
	
	List<All> getEventCommentsByRegionCode(int regionCode);
	List<All> getEventCommentsByTypeCode(int typeCode);
	List<All> getEventCommentsByPersonsCode(int personsCode);
	List<All> getEventCommentsByServiceTypeCode(int serviceTypeCode);
	
	List<All> getEventCommentsValid();
	

}
