package joojoo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import joojoo.entity.Owners;


public class OwnersDaoImple implements OwnersDao {
	
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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Owners getOwnersByOwnerId(String ownerId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Owners getOwnersByOwnerMail(String ownerMail) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Owners getOwnersByLicenseNumber(int licenseNumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Owners getOwnersForIdFind(String ownerId, String ownerName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Owners getOwnersForPassWordFind(String ownerId, String ownerName,
			String ownerMail) {
		// TODO Auto-generated method stub
		return null;
	}
	

	

}
