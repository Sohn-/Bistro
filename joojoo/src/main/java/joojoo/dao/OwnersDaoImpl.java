package joojoo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import joojoo.entity.Owners;
import joojoo.entity.Stores;


public class OwnersDaoImpl implements OwnersDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	private final String nameSpace = "joojoo.mappers.ownerMapper.";


	@Override
	public int insertOwner(Owners owner) {
		String stmt = nameSpace + "insertOwner";
		return sqlSession.insert(stmt, owner);
	}

	@Override
	public int updateOwner(Owners owner) {
		String stmt = nameSpace + "updateOwner";
		return sqlSession.insert(stmt, owner);
	}

	@Override
	public int deleteOwner(String ownerId) {
		String stmt = nameSpace + "deleteOwner";
		return sqlSession.insert(stmt, ownerId);
	}

	@Override
	public Owners getOwnersByOwnerId(String ownerId) {
		String stmt = nameSpace + "getOwnersByOwnerId";
		Owners result = sqlSession.selectOne(stmt,ownerId);
		return result;
	}

	@Override
	public Owners getOwnersByOwnerMail(String ownerMail) {
		String stmt = nameSpace + "getOwnersByOwnerMail";
		Owners result = sqlSession.selectOne(stmt,ownerMail);
		return result;
	}

	@Override
	public Owners getOwnersByLicenseNumber(String licenseNumber) {
		String stmt = nameSpace + "getOwnersByLicenseNumber";
		Owners result = sqlSession.selectOne(stmt,licenseNumber);
		return result;
	}

	@Override
	public Owners getOwnersForIdFind(Owners owner) {
		String stmt = nameSpace + "getOwnersForIdFind";
		Owners result = sqlSession.selectOne(stmt,owner);
		return result;
	}

	@Override
	public Owners getOwnersForPassWordFind(Owners owner) {
		String stmt = nameSpace + "getOwnersForPassWordFind";
		Owners result = sqlSession.selectOne(stmt,owner);
		return result;
	}



	

	

	

}
