package joojoo.dao;

import java.util.List;

import joojoo.entity.Category;
import joojoo.entity.Stores;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StoreDaoImpl implements StoreDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	private final String nameSpace = "joojoo.mappers.StoresMapper.";

	@Override
	public int insertStore(Stores store) {
		String stmt = nameSpace + "insertStore";
		return sqlSession.insert(stmt, store);
	}

	@Override
	public int updateStore(Stores store) {
		String stmt = nameSpace + "updateStore";
		return sqlSession.update(stmt, store);
	}

	@Override
	public int deleteStore(int storeCode) {
		String stmt = nameSpace + "deleteStore";
		return sqlSession.delete(stmt, storeCode);
	}

	@Override
	public List<Stores> getStoresByOwnerId(String ownerId) {
		String stmt = nameSpace + "getStoresByOwnerId";
		List<Stores> result = sqlSession.selectList(stmt,ownerId);
		return result;
	}

	@Override
	public Stores getStoreByStoreCode(int storeCode) {
		String stmt = nameSpace + "getStoreByStoreCode";
		Stores result = sqlSession.selectOne(stmt,storeCode);
		return result;
	}

	@Override
	public List<Stores> getStoresByStoreType(int typeCode) {
		String stmt = nameSpace + "getStoresByStoreType";
		List<Stores> result = sqlSession.selectList(stmt,typeCode);
		return result;
	}

	@Override
	public List<Stores> getStoresByRegion(int regionCode) {
		String stmt = nameSpace + "getStoresByRegion";
		List<Stores> result = sqlSession.selectList(stmt,regionCode);
		return result;
	}

	@Override
	public List<Stores> getStoresBySearchKeyword(Category category) {
		String stmt = nameSpace + "getStoresBySearchKeyword";
		List<Stores> result = sqlSession.selectList(stmt,category);
		return result;
	}
	

}

