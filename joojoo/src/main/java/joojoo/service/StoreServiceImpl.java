package joojoo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import joojoo.dao.StoreDao;
import joojoo.entity.Stores;
//@Transactional(rollbackFor = jdbc.exception.ServiceFailException.class)
@Service
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
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteStore(int storeCode) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Stores> showOwnerStores(String ownerId) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
