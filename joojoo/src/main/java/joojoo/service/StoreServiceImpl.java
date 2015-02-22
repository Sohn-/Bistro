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
	public boolean addStore(Stores store) {
		
		if( dao.insertStore(store)>0 )
			return true;
		else return false;
		
	}

	@Override
	public boolean updateStore(Stores store) {
		if( dao.updateStore(store) >0 )
			return true;
		else return false;
	}

	@Override
	public boolean deleteStore(int storeCode) {
		if( dao.deleteStore(storeCode)>0 )
			return true;
		else return false;
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
	

}
