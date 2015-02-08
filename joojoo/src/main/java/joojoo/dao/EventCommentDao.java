package joojoo.dao;

import java.util.List;

import joojoo.entity.Coupon;
import joojoo.entity.EventComment;
import joojoo.entity.ReviewComment;



public interface EventCommentDao {
	
	int insertEventComment(EventComment eventComment);
	int updateEventComment(EventComment eventComment);
	int deleteEventComment(int commentCode);
	
	List<EventComment> getEventCommentsByCategory(int regionCode, int typeCode, int personsCode, int serviceTypeCode);
	List<EventComment> getEventCommentsBySearchKeyword(String keyword);

}
