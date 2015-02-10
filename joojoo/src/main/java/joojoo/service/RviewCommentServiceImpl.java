package joojoo.service;

import java.util.List;

import joojoo.dao.RviewCommentDao;
import joojoo.entity.Category;
import joojoo.entity.EventComment;
import joojoo.entity.RviewComment;
import joojoo.entity.Stores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional(rollbackFor = java.lang.Exception.class)
public class RviewCommentServiceImpl implements RviewCommentService {

	@Autowired
	RviewCommentDao dao;

	@Override
	public List<RviewComment> SearchAll() {
		return null;
	}

	@Override
	public List<RviewComment> SearchByUserId(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RviewComment> SearchByMyId(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RviewComment> SearchByTitle(String title) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RviewComment> SearchByContetnt(String content) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RviewComment> SearchByStoerName(String storeName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RviewComment> SearchByKeyword(Category category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int registEvent(RviewComment eventComment, Stores store) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyEvent(RviewComment eventComment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteEvent(EventComment eventComment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int requestDeleteEvent(EventComment eventComment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public EventComment SearchOneRviewComment(int commentCode) {
		// TODO Auto-generated method stub
		return null;
	}

}
