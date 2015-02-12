package joojoo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import joojoo.entity.All;
import joojoo.entity.Owners;
import joojoo.entity.Stores;

@Repository
public class OwnersDaoImpl implements OwnersDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	private final String nameSpace = "joojoo.mappers.OwnersMapper.";


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
	public All getOwnersByOwnerId(String ownerId) {
		String stmt = nameSpace + "getOwnersByOwnerId";
		All result = sqlSession.selectOne(stmt,ownerId);
		return result;
	}

	@Override
	public All getOwnersByOwnerMail(String ownerMail) {
		String stmt = nameSpace + "getOwnersByOwnerMail";
		All result = sqlSession.selectOne(stmt,ownerMail);
		return result;
	}

	@Override
	public All getOwnersByLicenseNumber(String licenseNumber) {
		String stmt = nameSpace + "getOwnersByLicenseNumber";
		All result = sqlSession.selectOne(stmt,licenseNumber);
		return result;
	}

	@Override
	public All getOwnersForIdFind(Owners owner) {
		String stmt = nameSpace + "getOwnersForIdFind";
		All result = sqlSession.selectOne(stmt,owner);
		return result;
	}

	@Override
	public All getOwnersForPassWordFind(Owners owner) {
		String stmt = nameSpace + "getOwnersForPassWordFind";
		All result = sqlSession.selectOne(stmt,owner);
		return result;
	}



	

	

	

}
