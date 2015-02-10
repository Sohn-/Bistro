package joojoo.test;

import joojoo.dao.StoreDao;
import joojoo.dao.WishListDao;
import joojoo.entity.Stores;
import joojoo.entity.Users;
import joojoo.entity.WishList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;



public class WishListDaoTest {
	
	static final Logger LOG = LoggerFactory.getLogger(WishListDaoTest.class);
	
	@Autowired
	WishListDao dao;
	
	public WishListDaoTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config.xml");
		dao = ctx.getBean(WishListDao.class);
		
	}
	
	public static void main(String[] args) {
		
		WishListDaoTest test = new WishListDaoTest();
		test.insertTest();
		
	}
	
	
	public void insertTest(){
	
		WishList wishList1 = new WishList();
		wishList1.setCommentCode(4);
		wishList1.setUserId("user");
	
		
		//dao.insertUser(user);		
		LOG.trace("수업1"+dao.insertWishList(wishList1));
		//LOG.trace("수업!"+dao.deleteWishList(1));
		LOG.trace("수업"+dao.getWishListsByUserId("user"));
		
		
	}


}
