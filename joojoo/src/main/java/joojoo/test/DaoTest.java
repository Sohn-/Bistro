package joojoo.test;

import joojoo.dao.CouponDao;
import joojoo.dao.OwnersDao;
import joojoo.dao.UsersDao;
import joojoo.entity.Coupon;
import joojoo.entity.Owners;
import joojoo.entity.Users;
import joojoo.service.OwnerService;
import joojoo.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;


public class DaoTest {
	
	static final Logger LOG = LoggerFactory.getLogger(DaoTest.class);
	
	@Autowired

	//@Qualifier("CouponDao")
	OwnerService service;

	
	public DaoTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config.xml");
		service = ctx.getBean(OwnerService.class);
		
	}
	
	public static void main(String[] args) {
		
		DaoTest test = new DaoTest();
		test.daoTest();
		
	}
	
	
	public void daoTest(){

	Owners owner = new Owners();
	
	//owner.setOwnrMail("손찬영@네이버구글구글한메일한메일");
	owner.setOwnerId("shon");
//	owner.setOwnerName("손찬영");
//	user.setUserPassword("0000");
//	user.setUserPhone("0000");
	owner.setOwnerPassword("0001234");
//	owner.setOwnerPhone("010123445367777777777");
	
//	owner.setLicenseNumber("0001");

		LOG.trace("수업 1 : Owner : "+service.OwnersLogin(owner)); //OK

		//dao.insertUser(user);		
	

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
