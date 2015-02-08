package joojoo.dao;

import joojoo.entity.Owners;
import joojoo.entity.Users;


public interface OwnersDao {
	
	int insertOwner(Owners owner);
	int updateOwner(Owners owner);
	int deleteOwner(String ownerId);
	
	Owners getUsersByOwnerId(String ownerId); //회원가입시 중복체크용
	Owners getUsersByOwnerMail(String ownerMail); //회원가입시 메일 중복체ㅡ용 
	
	Owners getOwnersForIdFind(String ownerId, String ownerName); //아이디찾기용 (잊어버렸을때)
	Owners getOwnersForPassWordFind(String ownerId, String ownerName, String ownerMail); //비번찾기용
	

}
