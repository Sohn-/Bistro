package joojoo.dao;

import java.util.List;

import joojoo.entity.Coupon;
import joojoo.entity.Stores;



public interface StoreDao {
	
	int insertStore(Stores store);
	int updateStore(Stores store);
	int deleteStore(int storeCode);
	List<Stores> getStoresByOwnerId(String ownerId);
	Stores getStoreByStoreCode(int storeCode);

}