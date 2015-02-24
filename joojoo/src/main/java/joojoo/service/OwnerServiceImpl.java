package joojoo.service;

import joojoo.dao.EventCommentDao;
import joojoo.dao.OwnersDao;
import joojoo.dao.StoreDao;
import joojoo.entity.All;
import joojoo.entity.Owners;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(rollbackFor = java.lang.Exception.class)
public class OwnerServiceImpl implements OwnerService {
	static final Logger logger = LoggerFactory
				.getLogger(OwnerServiceImpl.class);

	@Autowired
	OwnersDao dao;
	@Autowired
	EventCommentDao eventDao;
	@Autowired
	StoreDao storeDao;
	
	@Override
	public int addOwner(Owners owner) {
		int result=dao.insertOwner(owner);
		return result;
	}

	@Override
	public int updateOwnerInfo(Owners owner) {
		int result=dao.updateOwner(owner);
		return result;
	}

	@Override
	public int outOwner(String ownerId) {
		eventDao.deleteEventCommentByOwnerId(ownerId);
		storeDao.deleteStoreByOwnerId(ownerId);
		int result=dao.deleteOwner(ownerId);
		return result;
	}

	@Override
	public All idDuplicateCheck(String ownerId) {
		All result=dao.getOwnersByOwnerId(ownerId);
		return result;
	}

	@Override
	public All licensenumberDuplicateCheck(String licenseNumber) {
		All result=dao.getOwnersByLicenseNumber(licenseNumber);
		return result;
	}

	@Override
	public All mailDuplicateCheck(String owenrMail) {
		All result=dao.getOwnersByOwnerMail(owenrMail);
		return result;
	}

	@Override
	public All findId(Owners owner) {
		All result=dao.getOwnersForIdFind(owner);
		return result;
	}

	@Override
	public All findPassword(Owners owner) {
		All result=dao.getOwnersForPassWordFind(owner);
		return result;
	}

	@Override
	public All OwnersLogin(Owners owner) {
		All result = dao.getOwnersByOwnerId(owner.getOwnerId());
		
		if (result != null) {
			if (result.getOwnerPassword().equals(owner.getOwnerPassword()) == false){
				result = null;
			}
		}else{
			result = null;
		}
		
		return result;
		
	}

	@Override
	public All getOwnersByOwnerId(String ownerId) {
		All result = dao.getOwnersByOwnerId(ownerId);
		return result;
	}


	

}
