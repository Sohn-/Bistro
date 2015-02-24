package joojoo.dao;

import java.util.List;

import joojoo.entity.All;
import joojoo.entity.WishList;



public interface WishListDao {
	
	int insertWishList(WishList wishList);
	int deleteWishList(int wishListCode);
	
	List<All> getWishListsByUserId(String userId);
	All getCommentCodeByWishListCode(int wishListCode);
	

}
