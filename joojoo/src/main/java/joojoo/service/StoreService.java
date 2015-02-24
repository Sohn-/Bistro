package joojoo.service;

import java.util.List;

import joojoo.entity.All;
import joojoo.entity.Category;
import joojoo.entity.Stores;

public interface StoreService {
	
	int addStore(Stores store);
	int updateStore(All store);
	int deleteStore(int storeCode);
	
	List<All> showOwnerStores(String ownerId);
	List<All> showStoresByCategory(Category category);
	List<All> showStoresByKeyword(Category category);
	List<All> showAllStore();
	All showStoresByStoreCode(int storeCode);
	String showOwnerStore(All ownerStore);
}
