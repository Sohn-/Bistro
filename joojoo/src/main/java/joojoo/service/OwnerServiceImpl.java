package joojoo.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import joojoo.dao.OwnersDao;
import joojoo.entity.Owners;

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
		logger.trace("수업:"+result.getOwnerPassword());
		logger.trace("수업:"+owner.getOwnerPassword());
		if(result.getOwnerPassword().equals(owner.getOwnerPassword())){
			logger.trace("수업:"+result.getOwnerPassword());
			logger.trace("수업:"+owner.getOwnerPassword());
			return result;
			}else{
				logger.trace("수업:실패");
				
				return null;
			}
	
		
	}


	

}
