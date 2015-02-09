package joojoo.dao;

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
		
		
		String stmt = null;
		try {
			stmt = nameSpace + "insertWishList";
			LOG.trace("수업 성공?");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			LOG.trace("수업 실패");
		}
		
		return sqlSession.insert(stmt, wishList);
		
	}

	@Override
	public int deleteWishList(int wishListCode) {
		String stmt = nameSpace + "deleteWishList";
		return sqlSession.delete(stmt, wishListCode);
	}
	
	
	

}

