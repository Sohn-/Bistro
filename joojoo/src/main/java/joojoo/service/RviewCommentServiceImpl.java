package joojoo.service;

import java.util.List;

import joojoo.dao.RviewCommentDao;
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

	@Override
	public List<RviewComment> SearchAll() {
		return dao.getAllRviewComments();
	}

	@Override
	public List<RviewComment> SearchByUserId(String userId) {
		return dao.getRviewCommentsByUserId(userId);
	}

	@Override
	public List<RviewComment> SearchByTitle(String title) {
		return dao.getRviewCommentsByTitle(title);
	}

	@Override
	public List<RviewComment> SearchByContetnt(String content) {
		return dao.getRviewCommentsByContent(content);
	}

	@Override
	public List<RviewComment> SearchByStoerName(String storeName) {
		return dao.getRviewCommentsByStoreName(storeName);
	}

	@Override
	public List<RviewComment> SearchByKeyword(Category category) {
		return dao.getRviewCommentsByKeyword(category);
	}

	@Override
	public int registRview(RviewComment rviewComment, Stores store) {
		return dao.insertRviewComment(rviewComment);
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
