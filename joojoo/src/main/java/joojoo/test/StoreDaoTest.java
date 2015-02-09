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
		stores1.setStoreName("첫번째가게");
		stores1.setStoreAdress("서울시 용산구 124-1");
		stores1.setStorePhone("02-111-0124");
		stores1.setOwnerId("sohn");
		stores1.setRegionCode(1);
		stores1.setTypeCode(2);
		
		
		//dao.insertUser(user);		
		LOG.trace("수업1"+dao.insertStore(stores1)); //OK
		//LOG.trace("수업 2:"+dao.getDepartmentByIdNoMapping(120));
		//LOG.trace("수업 3:"+dao.getDepartmentCountByLocationId(1700)); //OK
		//LOG.trace("수업 4:"+dao.getDepartmentsByLocationId(1700));	//OK
		//LOG.trace("수업 5:"+dao.getDepartmentById(250));		//OK
		//LOG.trace("수업 6:"+dao.getAllDepartments());	//OK
		//LOG.trace("수업 7:"+dao.getDepartmentsByManagerId(108));	//OK
		//LOG.trace("수업 8:"+dao.getDepartmentByIdWithEmployees(110));
		//dao.getDepartmentByIdWithEmployees(110);
		
		//Department dept = new Department(1212, "손찬영부서", 108, 1700);
	/*	private int departmentId;
		private String departmentName;
		private int managerId;
		private int locationId;*/
		//LOG.trace("결과 : "+dao.insertDepartment(dept));
		//dept.setDepartmentName("수정됨");
		//dept.setManagerId(205);
		//dept.setLocationId(2700);
		//LOG.trace("결과 : "+dao.updateDepartment(dept));
		//LOG.trace("결과 : "+dao.deleteDepartment(dept.getDepartmentId()));
		
	}
	


}
