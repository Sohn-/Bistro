package joojoo.service;

import java.util.List;

import joojoo.entity.WishList;

public interface WishListService {
	
	boolean addWishList(WishList wishList);
	boolean deleteWishList(int wishListCode);
	
	List<WishList> showAllWishList(String userId);
	
}
