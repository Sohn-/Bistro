package joojoo.test;

import joojoo.dao.StoreDao;
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
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config.xml");
		dao = ctx.getBean(StoreDao.class);
		
	}
	
	public static void main(String[] args) {
		
		StoreDaoTest test = new StoreDaoTest();
		test.insertTest();
		
	}
	
	
	public void insertTest(){
	
		Stores stores1 = new Stores();
		stores1.setStoreName("첫번째가게수정함");
		stores1.setStoreAdress("서울시 용산구 124-1");
		stores1.setStorePhone("02-111-01214");
		stores1.setOwnerId("sohn");
		stores1.setRegionCode(1);
		stores1.setTypeCode(2);
		stores1.setStoreCode(1);
		
	
		//LOG.trace("수업 "+dao.updateStore(stores1));
		//LOG.trace("수업 : "+dao.deleteStore(4));
		LOG.trace("수업 "+dao.getStoreByStoreCode(1));
		LOG.trace("수업"+dao.getStoresByOwnerId("sohn"));
		
	
		
	}
	


}
