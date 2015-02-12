package joojoo.test;


import joojoo.entity.Category;
import joojoo.entity.Stores;
import joojoo.service.StoreService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class StoreServiceTest {

static final Logger LOG = LoggerFactory.getLogger(StoreDaoTest.class);
	
	@Autowired
	StoreService service;
	
	public StoreServiceTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config.xml");
		service = ctx.getBean(StoreService.class);
		
	}
	
	public static void main(String[] args) {
		
		StoreServiceTest test = new StoreServiceTest();
		test.insertTest2();
		
	}
	
	
	public void insertTest2(){
	
		Stores stores1 = new Stores();
		stores1.setStoreName("업뎃한 가게");
		stores1.setStoreAdress("서울시 강남구");
		stores1.setStorePhone("00000");
		stores1.setOwnerId("sohn");
		stores1.setRegionName("강남");
		stores1.setTypeName("바");
		
		Category c = new Category();
		c.setRegionName("강남");
		c.setTypeName("고깃집");
		
		c.setKeyword("고");
		
		//LOG.trace("수업"+service.addStore(stores1));
		//LOG.trace("수업" +service.updateStore(stores1));
		//LOG.trace("수업" +service.deleteStore(23));
		//LOG.trace("수업" +service.showOwnerStores("sohn"));
		//LOG.trace("수업" +service.showStoresBySerchKeyword(c));
		LOG.trace("수업"+service.showStoresByCategory(c));
		
		
	
		
	}
}
