package joojoo.dao;

import joojoo.entity.Users;
import joojoo.entity.WishList;



public interface WishListDao {
	
	int insertWishList(WishList wishList);
	int deleteWishList(int wishListCode);
	

}
