package joojoo.service;

import java.util.List;

import joojoo.entity.All;
import joojoo.entity.WishList;

public interface WishListService {
	
	boolean addWishList(WishList wishList);
	boolean deleteWishList(int wishListCode);
	
	List<All> showAllWishList(String userId);
	
}
