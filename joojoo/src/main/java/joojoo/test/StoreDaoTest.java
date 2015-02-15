package joojoo.test;

import joojoo.dao.StoreDao;
import joojoo.entity.Category;
import joojoo.entity.Stores;
import joojoo.entity.Users;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;



public class StoreDaoTest {
	
	static final Logger LOG = LoggerFactory.getLogger(StoreDaoTest.class);
	
	@Autowired
	StoreDao dao;
	
	public StoreDaoTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config2.xml");
		dao = ctx.getBean(StoreDao.class);
		
	}
	
	public static void main(String[] args) {
		
		StoreDaoTest test = new StoreDaoTest();
		test.insertTest();
		
	}
	
	
	public void insertTest(){
	
		Stores stores1 = new Stores();
		stores1.setStoreName("집에가자집333");
		stores1.setStoreAdress("서울시 노원구");
		stores1.setStorePhone("021");
		stores1.setOwnerId("sohn");
		stores1.setRegionName("홍대");
		stores1.setTypeName("바");
		stores1.setStoreCode(3);
		Category c = new Category();
		//c.setKeyword("서울");
		//c.setRegionCode(1);
		c.setRegionName("홍대");
		
		//dao.insertStore(stores1);
		//LOG.trace("수업 "+dao.updateStore(stores1));
		//LOG.trace("수업 : "+dao.deleteStore(4));
		//LOG.trace("수업 "+dao.getStoreByStoreCode(1));
		//LOG.trace("수업"+dao.getStoresByOwnerId("sohn"));
		//LOG.trace("수업"+dao.getStoresByOwnerId("sohn"));
		LOG.trace("수업"+dao.getStoresBySearchKeyword(c));
		//LOG.trace("수업"+dao.getStoresByCategory(c));
		
	
		
	}
	


}
