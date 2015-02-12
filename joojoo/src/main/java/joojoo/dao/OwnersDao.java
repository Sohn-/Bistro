package joojoo.dao;

import joojoo.entity.All;
import joojoo.entity.Owners;


public interface OwnersDao {
	
	int insertOwner(Owners owner);
	int updateOwner(Owners owner);
	int deleteOwner(String ownerId);
	
	All getOwnersByOwnerId(String ownerId); //회원가입시 중복체크용
	All getOwnersByOwnerMail(String ownerMail); //회원가입시 메일 중복체ㅡ용 
	All getOwnersByLicenseNumber(String licenseNumber); //회원 가입시 중복체크용
	
	All getOwnersForIdFind(Owners owner); //아이디찾기용 (잊어버렸을때)
	All getOwnersForPassWordFind(Owners owner); //비번찾기용
	

}
