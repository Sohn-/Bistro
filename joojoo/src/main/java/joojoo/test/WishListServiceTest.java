package joojoo.test;




import joojoo.entity.WishList;
import joojoo.service.WishListService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class WishListServiceTest {

static final Logger LOG = LoggerFactory.getLogger(StoreDaoTest.class);
	
	@Autowired
	WishListService service;
	
	public WishListServiceTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config.xml");
		service = ctx.getBean(WishListService.class);
		
	}
	
	public static void main(String[] args) {
		
		WishListServiceTest test = new WishListServiceTest();
		test.insertTest24();
		
	}
	
	
	public void insertTest24(){
	
		WishList w = new WishList();
		w.setCommentCode(1);
		w.setUserId("user");
		
		LOG.trace("수업"+service.addWishList(w));
		//LOG.trace("수업"+service.deleteWishList(1));
		LOG.trace("수업"+service.showAllWishList("user"));
		
		
	
		
	}
}
