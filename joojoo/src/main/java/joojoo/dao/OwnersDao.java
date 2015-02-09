package joojoo.dao;

import joojoo.entity.Owners;


public interface OwnersDao {
	
	int insertOwner(Owners owner);
	int updateOwner(Owners owner);
	int deleteOwner(String ownerId);
	
	Owners getOwnersByOwnerId(String ownerId); //회원가입시 중복체크용
	Owners getOwnersByOwnerMail(String ownerMail); //회원가입시 메일 중복체ㅡ용 
	Owners getOwnersByLicenseNumber(String licenseNumber); //회원 가입시 중복체크용
	
	Owners getOwnersForIdFind(Owners owner); //아이디찾기용 (잊어버렸을때)
	Owners getOwnersForPassWordFind(Owners owner); //비번찾기용
	

}
