package joojoo.dao;

import java.util.List;

import joojoo.entity.WishList;



public interface WishListDao {
	
	int insertWishList(WishList wishList);
	int deleteWishList(int wishListCode);
	
	List<WishList> getWishListsByUserId(String userId);
	
	

}
