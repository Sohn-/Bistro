package joojoo.dao;

import java.util.List;

import joojoo.entity.Stores;
import joojoo.entity.Users;



public interface UsersDao {
	
	int insertUser(Users user);
	int updateUser(Users user);
	int deleteUser(String userId);
	
	Users getUsersByUserId(String userId); //회원가입시 중복체크용
	Users getUsersByUserMail(String userMail); //회원가입시 메일 중복체ㅡ용 
	
	Users getUsersForIdFind(String userId, String userName); //아이디찾기용 (잊어버렸을때)
	Users getUsersForPassWordFind(String userId, String userName, String userMail); //비번찾기용
	

}
