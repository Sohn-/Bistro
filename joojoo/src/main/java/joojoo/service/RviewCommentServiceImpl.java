package joojoo.service;

import java.util.List;

import joojoo.dao.RviewCommentDao;
import joojoo.dao.StoreDao;
import joojoo.entity.Category;
import joojoo.entity.EventComment;
import joojoo.entity.Stores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional(rollbackFor = java.lang.Exception.class)
public class RviewCommentServiceImpl implements RviewCommentService {

	@Autowired
	RviewCommentDao dao;

}
