package joojoo.dao;

import java.util.List;

import joojoo.entity.All;
import joojoo.entity.Stores;
import joojoo.entity.Users;



public interface UsersDao {
	
	int insertUser(Users user);
	int updateUser(Users user);
	int deleteUser(String userId);
	
	All getUsersByUserId(String userId); //회원가입시 중복체크용
	All getUsersByUserMail(String userMail); //회원가입시 메일 중복체ㅡ용 
	
	All getUsersForIdFind(Users user); //아이디찾기용 (잊어버렸을때)
	All getUsersForPassWordFind(Users user); //비번찾기용
	int updateChance(int chance);

	

}
