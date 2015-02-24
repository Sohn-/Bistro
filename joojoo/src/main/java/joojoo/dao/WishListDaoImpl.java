package joojoo.dao;

import java.util.List;

import joojoo.entity.All;
import joojoo.entity.WishList;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class WishListDaoImpl implements WishListDao{
	
	static final Logger LOG = LoggerFactory.getLogger(WishListDaoImpl.class);

	@Autowired
	SqlSessionTemplate sqlSession;
	
	private final String nameSpace = "joojoo.mappers.WishListMapper.";
	
	@Override
	public int insertWishList(WishList wishList) {
		int result = -1;
		try {
			
			String stmt = nameSpace + "insertWishList";
			result = sqlSession.insert(stmt, wishList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			LOG.trace("에러...");
		}
		return result;
		
	}

	@Override
	public int deleteWishList(int wishListCode) {
		String stmt = nameSpace + "deleteWishList";
		return sqlSession.delete(stmt, wishListCode);
	}

	@Override
	public List<All> getWishListsByUserId(String userId) {
		String stmt = nameSpace + "getWishListsByUserId";
		return sqlSession.selectList(stmt, userId);
	}

	@Override
	public All getCommentCodeByWishListCode(int wishListCode) {
		String stmt = nameSpace + "getCommentCodeByWishListCode";
		return sqlSession.selectOne(stmt, wishListCode);
	}

	
	
	

}

