package joojoo.service;

import joojoo.dao.OwnersDao;
import joojoo.entity.Owners;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OwnerServiceImpl implements OwnerService {
	static final Logger logger = LoggerFactory
				.getLogger(OwnerServiceImpl.class);

	@Autowired
	OwnersDao dao;
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
		int result=dao.deleteOwner(ownerId);
		return result;
	}

	@Override
	public Owners idDuplicateCheck(String ownerId) {
		Owners result=dao.getOwnersByOwnerId(ownerId);
		return result;
	}

	@Override
	public Owners licensenumberDuplicateCheck(String licenseNumber) {
		Owners result=dao.getOwnersByLicenseNumber(licenseNumber);
		return result;
	}

	@Override
	public Owners mailDuplicateCheck(String owenrMail) {
		Owners result=dao.getOwnersByOwnerMail(owenrMail);
		return result;
	}

	@Override
	public Owners findId(Owners owner) {
		Owners result=dao.getOwnersForIdFind(owner);
		return result;
	}

	@Override
	public Owners findPassword(Owners owner) {
		Owners result=dao.getOwnersForPassWordFind(owner);
		return result;
	}

	@Override
	public Owners OwnersLogin(Owners owner) {
		Owners result = dao.getOwnersByOwnerId(owner.getOwnerId());
		
		if (result != null) {
			if (result.getOwnerPassword().equals(owner.getOwnerPassword()) == false){
				result = null;
			}
		}else{
			result = null;
		}
		
		return result;
		
	}


	

}
