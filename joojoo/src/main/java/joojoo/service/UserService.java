package joojoo.service;


import joojoo.entity.All;
import joojoo.entity.Users;

public interface UserService {
	
	int addUser(Users user);//회원가입
	int updateUserInfo(Users user);//회원정보수정
	int outUser(String userId);//회원탈퇴
	
	All idDuplicateCheck(String userId); //회원가입시 중복체크용
	All mailDuplicateCheck(String userMail); //회원가입시 메일 중복체ㅡ용 
	
	All findId(Users user); //아이디찾기용 (잊어버렸을때)
	All findPassword(Users user); //비번찾기용
	All UsersLogin(Users user);//로그인
	
	All getUserInfo(String userId);

}
