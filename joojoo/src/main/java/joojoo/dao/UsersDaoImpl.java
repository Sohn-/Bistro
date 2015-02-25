package joojoo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import joojoo.entity.All;
import joojoo.entity.Owners;
import joojoo.entity.Stores;
import joojoo.entity.Users;


@Repository
public class UsersDaoImpl implements UsersDao{
	@Autowired
	SqlSessionTemplate sqlSession;
	
	private final String nameSpace = "joojoo.mappers.UsersMapper.";

	@Override
	public int insertUser(Users user) {//회원가입
		String stmt = nameSpace + "insertUser";
		return sqlSession.insert(stmt, user);
	}

	@Override
	public int updateUser(Users user) {//회원정보수정
		String stmt = nameSpace + "updateUser";
		return sqlSession.update(stmt, user);
	}

	@Override
	public int deleteUser(String userId) {//회원탈퇴
		String stmt = nameSpace + "deleteUser";
		return sqlSession.delete(stmt, userId);
	}

	@Override
	public All getUsersByUserId(String userId) {//아이디중복체크
		String stmt = nameSpace + "getUsersByUserId";
		All result = sqlSession.selectOne(stmt,userId);
		return result;
		
	}

	@Override
	public All getUsersByUserMail(String userMail) {//메일중복체크
		String stmt = nameSpace + "getUsersByUserMail";
		All result = sqlSession.selectOne(stmt,userMail);
		return result;
	}

	@Override
	public All getUsersForIdFind(Users user) {//아이디찾기 (메일, 이름) 
		String stmt = nameSpace + "getUsersForIdFind";
		All result = sqlSession.selectOne(stmt,user);
		return result;
	}

	@Override
	public All getUsersForPassWordFind(Users user) {//비밀번호찾기(메일,이름,아이디)
		String stmt = nameSpace + "getUsersForPassWordFind";
		All result = sqlSession.selectOne(stmt,user);
		return result;
	}



	@Override
	public int updateChance(int chance) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateUserChance(Users user) {
		
		
		String stmt = nameSpace + "updateUserChance";
		return sqlSession.update(stmt, user);
	}
	

	

}
