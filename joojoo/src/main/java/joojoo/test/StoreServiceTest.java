package joojoo.test;

import joojoo.dao.StoreDao;
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
		
		StoreDaoTest test = new StoreDaoTest();
		test.insertTest();
		
	}
	
	
	public void insertTest(){
	
		Stores stores1 = new Stores();
		stores1.setStoreName("서비스테스트");
		stores1.setStoreAdress("서울시 광진구");
		stores1.setStorePhone("02-111-01214");
		stores1.setOwnerId("sohn");
		stores1.setRegionCode(1);
		stores1.setTypeCode(2);
		
		LOG.trace("수업"+service.addStore(stores1));
		
	
		
		
	
		
	}
}
