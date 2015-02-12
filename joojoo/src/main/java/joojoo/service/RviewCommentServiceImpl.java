package joojoo.service;

import java.util.List;

import joojoo.dao.RviewCommentDao;
import joojoo.dao.StoreDao;
import joojoo.entity.All;
import joojoo.entity.Category;
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
	
	@Autowired
	StoreDao storeDao;

	@Override
	public List<All> SearchAll() {
		return dao.getAllRviewComments();
	}

	@Override
	public List<All> SearchByUserId(String userId) {
		return dao.getRviewCommentsByUserId(userId);
	}

	@Override
	public List<All> SearchByTitle(String title) {
		return dao.getRviewCommentsByTitle(title);
	}

	@Override
	public List<All> SearchByContetnt(String content) {
		return dao.getRviewCommentsByContent(content);
	}

	@Override
	public List<All> SearchByStoerName(String storeName) {
		return dao.getRviewCommentsByStoreName(storeName);
	}

	@Override
	public List<All> SearchByKeyword(Category category) {
		return dao.getRviewCommentsByKeyword(category);
	}

	@Override
	public int registRview(RviewComment rviewComment, Stores store) {
		int result=0;
		result = dao.insertRviewComment(rviewComment);		
		//result += storeDao.insertStore(store);
		return result;
	}

	@Override
	public int modifyRview(RviewComment rviewComment) {
		return dao.updateRviewComment(rviewComment);
	}

	@Override
	public int deleteRview(String userId, int commentCode) {
		return dao.deleteRviewComment(commentCode);
	}

}
