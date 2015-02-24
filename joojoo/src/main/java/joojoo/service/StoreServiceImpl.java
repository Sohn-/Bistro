package joojoo.service;

import java.util.List;

import joojoo.dao.StoreDao;
import joojoo.entity.All;
import joojoo.entity.Category;
import joojoo.entity.Stores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
//@Transactional(rollbackFor = jdbc.exception.ServiceFailException.class)
@Service
@Transactional(rollbackFor = java.lang.Exception.class)
public class StoreServiceImpl implements StoreService {

	@Autowired
	StoreDao dao;
	
	@Override
	public int addStore(Stores store) {
		int result = dao.insertStore(store);
		return result;
	}
	
	@Override
	public int updateStore(All store) {
		int result = dao.updateStore(store);
		
		return result;
	}

	@Override
	public int deleteStore(int storeCode) {
		int reuslt = dao.deleteStore(storeCode);
		return reuslt;
	}

	@Override
	public List<All> showOwnerStores(String ownerId) {
		List<All> result = null;
		result = dao.getStoresByOwnerId(ownerId);
		return result;
	}

	@Override
	public List<All> showStoresByCategory(Category category) {
		List<All> result = null;
		result = dao.getStoresByCategory(category);
		return result;
		
		
	}
	
	@Override
	public List<All> showAllStore() {
		return dao.getAllStore();	
	}

	@Override
	public List<All> showStoresByKeyword(Category category) {
		List<All> result = null;
		result = dao.getStoresBySearchKeyword(category);
		return result;
	}

	@Override
	public String showOwnerStore(All ownerStore) {
		String result = dao.getStoreByStoreName(ownerStore);
		return result;
	}

	@Override
	public All showStoresByStoreCode(int storeCode) {
		All result = dao.getStoreByStoreCode(storeCode);
		return result;
	}
	

}
