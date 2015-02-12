package joojoo.dao;

import java.util.List;

import joojoo.entity.All;
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
	public List<All> getStoresByOwnerId(String ownerId) {
		String stmt = nameSpace + "getStoresByOwnerId";
		List<All> result = sqlSession.selectList(stmt,ownerId);
		return result;
	}

	@Override
	public All getStoreByStoreCode(int storeCode) {
		String stmt = nameSpace + "getStoreByStoreCode";
		All result = sqlSession.selectOne(stmt,storeCode);
		return result;
	}

	@Override
	public List<All> getStoresByStoreType(int typeCode) {
		String stmt = nameSpace + "getStoresByStoreType";
		List<All> result = sqlSession.selectList(stmt,typeCode);
		return result;
	}

	@Override
	public List<All> getStoresByRegion(int regionCode) {
		String stmt = nameSpace + "getStoresByRegion";
		List<All> result = sqlSession.selectList(stmt,regionCode);
		return result;
	}

	@Override
	public List<All> getStoresBySearchKeyword(Category category) {
		String stmt = nameSpace + "getStoresBySearchKeyword";
		List<All> result = sqlSession.selectList(stmt,category);
		return result;
	}

	@Override
	public List<All> getStoresByCategory(Category category) {
		String stmt = nameSpace + "getStoresByCategory";
		List<All> result = sqlSession.selectList(stmt,category);
		return result;
	}

	@Override
	public List<All> getAllStore() {
		String stmt = nameSpace + "getAllStore";
		List<All> result = sqlSession.selectList(stmt);
		return result;
	}
	

}

