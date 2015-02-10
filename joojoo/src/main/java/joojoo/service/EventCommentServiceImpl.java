package joojoo.service;

import java.util.List;

import joojoo.dao.CouponDao;
import joojoo.dao.EventCommentDao;
import joojoo.entity.Category;
import joojoo.entity.Coupon;
import joojoo.entity.EventComment;

import org.hibernate.event.spi.EventSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional(rollbackFor = java.lang.Exception.class)
public class EventCommentServiceImpl implements EventCommentService {

	@Autowired
	EventCommentDao dao;
	
	@Autowired
	CouponDao couponDao;

	@Override
	public List<EventComment> SeachByKeyword(Category category) {
		return dao.getEventCommentsByKeyword(category);
	}

	@Override
	public List<EventComment> SeachByCategory(Category category) {
		return dao.getEventCommentsByCategory(category);
	}

	@Override
	public List<EventComment> SeachMyEvent(String ownerId) {
		return dao.getEventCommentsByOwnerId(ownerId);
	}

	@Override
	public int registEvent(String ownerId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyEvent(int comment_code) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int requestDeleteEvent(int comment_code) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public EventComment SearchOneEvent(int comment_code) {
		// TODO Auto-generated method stub
		return null;
	}

	


}
