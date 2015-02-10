package joojoo.service;

import joojoo.dao.UsersDao;
import joojoo.entity.Users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class UserServiceImp implements UserService{
	
	@Autowired
	UsersDao dao;

/*	@Override
	public int insertUser(Users user) {//회원가입
		int result = dao.insertUser(user);
		return result;
	}

	@Override
	public int updateUser(Users user) {//회원정보수정
		int result = dao.updateUser(user);
		return result;
	}

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
