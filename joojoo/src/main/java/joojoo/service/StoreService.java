package joojoo.service;

import java.util.List;

import joojoo.entity.Category;
import joojoo.entity.Stores;

public interface StoreService {
	
	boolean addStore(Stores store);
	boolean updateStore(Stores store);
	boolean deleteStore(int storeCode);
	
	List<Stores> showOwnerStores(String ownerId);
	List<Stores> showStoresByCategory(Category category);
	List<Stores> showStoresBySerchKeyword(Category category);
}
