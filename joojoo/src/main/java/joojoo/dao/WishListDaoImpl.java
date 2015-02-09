package joojoo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import joojoo.entity.Users;
import joojoo.entity.WishList;


//@Repository
public class WishListDaoImpl implements WishListDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	private final String nameSpace = "joojoo.mappers.WishListMapper.";
	
	@Override
	public int insertWishList(WishList wishList) {
		String stmt = nameSpace + "insertWishList";
		return sqlSession.insert(stmt, wishList);
	}

	@Override
	public int deleteWishList(int wishListCode) {
		String stmt = nameSpace + "deleteWishList";
		return sqlSession.delete(stmt, wishListCode);
	}
	
	
	

}
