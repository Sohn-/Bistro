package joojoo.service;

import java.util.List;

import joojoo.entity.Stores;

public interface StoreService {
	
	boolean addStore(Stores store);
	boolean updateStore(Stores store);
	boolean deleteStore(int storeCode);
	
	List<Stores> showOwnerStores(String ownerId);

}
