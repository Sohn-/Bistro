package joojoo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import joojoo.entity.Owners;
import joojoo.entity.Stores;
import joojoo.entity.Users;


@Repository
public class UsersDaoImpl implements UsersDao{
	@Autowired
	SqlSessionTemplate sqlSession;
	
	private final String nameSpace = "joojoo.mappers.UserMapper.";

	@Override
	public int insertUser(Users user) {
		String stmt = nameSpace + "insertUser";
		return sqlSession.insert(stmt, user);
	}

	@Override
	public int updateUser(Users user) {
		String stmt = nameSpace + "updateUser";
		return sqlSession.insert(stmt, user);
	}

	@Override
	public int deleteUser(String userId) {
		String stmt = nameSpace + "deleteUser";
		return sqlSession.insert(stmt, userId);
	}

	@Override
	public Users getUsersByUserId(String userId) {
		String stmt = nameSpace + "getUsersByUserId";
		Users result = sqlSession.selectOne(stmt,userId);
		return result;
		
	}

	@Override
	public Users getUsersByUserMail(String userMail) {
		String stmt = nameSpace + "getUsersByUserMail";
		Users result = sqlSession.selectOne(stmt,userMail);
		return result;
	}

	@Override
	public Users getUsersForIdFind(Users user) {
		String stmt = nameSpace + "getUsersForIdFind";
		Users result = sqlSession.selectOne(stmt,user);
		return result;
	}

	@Override
	public Users getUsersForPassWordFind(Users user) {
		String stmt = nameSpace + "getOwnersForPassWordFind";
		Users result = sqlSession.selectOne(stmt,user);
		return result;
	}
	

	

}
