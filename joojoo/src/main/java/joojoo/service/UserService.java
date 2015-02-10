package joojoo.service;

import org.springframework.stereotype.Service;

import joojoo.entity.Users;
@Service
public interface UserService {
	
	int addtUser(Users user);//회원가입
	int updateUserInfo(Users user);//회원정보수정
	int User(String userId);//회원탈퇴
	
	Users idDuplicateCheck(String userId); //회원가입시 중복체크용
	Users mailDuplicateCheck(String userMail); //회원가입시 메일 중복체ㅡ용 
	
	Users getUsersForIdFind(Users user); //아이디찾기용 (잊어버렸을때)
	Users getUsersForPassWordFind(Users user); //비번찾기용
	Users getUsersLogin(Users user);//로그인

}
