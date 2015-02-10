package joojoo.service;

import java.util.List;

import joojoo.dao.CouponDao;
import joojoo.dao.EventCommentDao;
import joojoo.dao.StoreDao;
import joojoo.entity.Category;
import joojoo.entity.EventComment;
import joojoo.entity.Stores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional(rollbackFor = java.lang.Exception.class)
public class EventCommentServiceImpl implements EventCommentService {

	@Autowired
	EventCommentDao dao;

	@Autowired
	StoreDao storeDao;

	@Override
	public List<EventComment> SeachByKeyword(Category category) {
		return dao.getEventCommentsByKeyword(category);
	}

	//int regionCode, int typeCode, int personsCode, int serviceTypeCode
	@Override
	public List<EventComment> SeachByCategory(Category category) {
		int regionCode = category.getRegionCode();
		int typeCode = category.getTypeCode();
		int personsCode = category.getPersonsCode();
		int serviceTypeCode = category.getServiceTypeCode();
		
		List<EventComment> result = null; //select All eventComments
		
		if(regionCode != 0 || typeCode != 0 || personsCode != 0 || serviceTypeCode != 0){
			for(EventComment e : result){
				if(regionCode == e.get)
			}
		}
		
		
		return result;
	}

	@Override
	public List<EventComment> SeachMyEvent(String ownerId) {
		return dao.getEventCommentsByOwnerId(ownerId);
	}

	@Override
	public int registEvent(EventComment eventComment, Stores store) {
		int result = 0;
		result = dao.insertEventComment(eventComment);
		result += storeDao.insertStore(store);
		
		return result;
	}

	@Override
	public int modifyEvent(EventComment eventComment) {
		return dao.updateEventComment(eventComment);
	}

	@Override
	public int requestDeleteEvent(EventComment eventComment) {
		eventComment.setDeleteRequest("삭제요청되었습니다.");
		return dao.updateEventComment(eventComment);
	}

	@Override
	public EventComment SearchOneEvent(int commentCode) {
		return dao.getEventCommentByCommentCode(commentCode);
	}

	


}
