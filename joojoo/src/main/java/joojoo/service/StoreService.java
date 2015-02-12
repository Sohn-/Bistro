package joojoo.service;

import java.util.List;

import joojoo.entity.All;
import joojoo.entity.Category;
import joojoo.entity.Stores;

public interface StoreService {
	
	boolean addStore(Stores store);
	boolean updateStore(Stores store);
	boolean deleteStore(int storeCode);
	
	List<All> showOwnerStores(String ownerId);
	List<All> showStoresByCategory(Category category);
	List<All> showStoresBySerchKeyword(Category category);
	List<All> showAllStore();
}
