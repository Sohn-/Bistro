package joojoo.service;

import java.util.List;

import joojoo.dao.WishListDao;
import joojoo.entity.All;
import joojoo.entity.WishList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
//@Transactional(rollbackFor = jdbc.exception.ServiceFailException.class)
@Service
@Transactional(rollbackFor = java.lang.Exception.class)
public class WishListServiceImpl implements WishListService {

	@Autowired
	WishListDao dao;
	
	@Override
	public boolean addWishList(WishList wishList) {
		if( dao.insertWishList(wishList) > 0 )
			return true;
		else return false;
	}
	
	@Override
	public boolean deleteWishList(int wishListCode) {
		if( dao.deleteWishList(wishListCode) > 0 )
			return true;
		else return false;
	}
	


	@Override
	public List<All> showAllWishList(String userId) {
		List<All> result = dao.getWishListsByUserId(userId);
		return result;
	}

	

	@Override
	public All getCommentCodeBywishListCode(int wishListCode) {
		All result = dao.getCommentCodeByWishListCode(wishListCode);
		return result;
	}



	
	

}
