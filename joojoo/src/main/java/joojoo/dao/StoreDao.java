package joojoo.dao;

import java.util.List;

import joojoo.entity.All;
import joojoo.entity.Category;
import joojoo.entity.Stores;



public interface StoreDao {
	
	int insertStore(Stores store);
	int updateStore(Stores store);
	int deleteStore(int storeCode);
	
	List<All> getStoresByOwnerId(String ownerId);
	All getStoreByStoreCode(int storeCode);
	List<All> getStoresByStoreType(int typeCode);
	List<All> getStoresByRegion(int regionode);
	List<All> getStoresByCategory(Category category);
	List<All> getStoresBySearchKeyword(Category category);
	List<All> getAllStore();
	
}
