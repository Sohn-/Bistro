package joojoo.dao;

import joojoo.entity.Owners;


public interface OwnersDao {
	
	int insertOwner(Owners owner);
	int updateOwner(Owners owner);
	int deleteOwner(String ownerId);
	
	Owners getOwnersByOwnerId(String ownerId); //회원가입시 중복체크용
	Owners getOwnersByOwnerMail(String ownerMail); //회원가입시 메일 중복체ㅡ용 
	Owners getOwnersByLicenseNumber(int licenseNumber); //회원 가입시 중복체크용
	
	Owners getOwnersForIdFind(String ownerId, String ownerName); //아이디찾기용 (잊어버렸을때)
	Owners getOwnersForPassWordFind(String ownerId, String ownerName, String ownerMail); //비번찾기용
	

}
