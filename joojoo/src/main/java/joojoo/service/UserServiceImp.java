package joojoo.service;

import joojoo.dao.UsersDao;
import joojoo.entity.All;
import joojoo.entity.Users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class UserServiceImp implements UserService{
	
	@Autowired
	UsersDao dao;

	@Override
	public int addUser(Users user) {
		int result = dao.insertUser(user);
		return result;
	}

	@Override
	public int updateUserInfo(Users user) {
		int result = dao.updateUser(user);
		return result;
	}


	@Override
	public All idDuplicateCheck(String userId) {
		All result = dao.getUsersByUserId(userId);
		return result;
	}

	@Override
	public All mailDuplicateCheck(String userMail) {
		All result = dao.getUsersByUserMail(userMail);
		return result;
	}

	@Override
	public All findId(Users user) {
		All result = dao.getUsersForIdFind(user);
		return result;
	}

	@Override
	public All findPassword(Users user) {
		All result = dao.getUsersForPassWordFind(user);
		return result;
	}

	@Override
	public All UsersLogin(Users user) {

		All result = dao.getUsersByUserId(user.getUserId());
		
		if (result != null) {
			if (result.getUserPassword().equals(user.getUserPassword()) == false){
				result = null;
			}
		}else{
			result = null;
		}
		
		return result;
	}

	
	
	@Override
	public int outUser(String userId) {
		int result = dao.deleteUser(userId);
		return result;
	}

/*	@Override


	@Override
	public int deleteUser(String userId) {//회원탈퇴
		int result = dao.deleteUser(userId);
		return result;
	}

	@Override
	public Users getUsersByUserId(String userId) {//아이디 중복체크 
		Users result = dao.getUsersByUserId(userId);
		return result;
	}

	@Override
	public Users getUsersByUserMail(String userMail) {//메일중복체크 
		Users result = dao.getUsersByUserMail(userMail);
		return result;
	}

	@Override
	public Users getUsersForIdFind(Users user) {//아이디찾기 (메일,이름)
		Users result = dao.getUsersForIdFind(user);
		return result;
	}

	@Override
	public Users getUsersForPassWordFind(Users user) {//비밀번호찾기(아이디, 메일, 이름)
		Users result = dao.getUsersForPassWordFind(user);
		return result;
	}

	@Override
	public Users getUsersLogin(Users user) {//로그인
		Users result = dao.getUsersLogin(user);
		return result;
	}*/
	


}
