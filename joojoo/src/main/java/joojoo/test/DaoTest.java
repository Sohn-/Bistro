package joojoo.test;

import joojoo.dao.CouponDao;
import joojoo.entity.Coupon;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;


public class DaoTest {
	
	static final Logger LOG = LoggerFactory.getLogger(DaoTest.class);
	
	@Autowired
	CouponDao dao;
	
	public DaoTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("application_config.xml");
		dao = ctx.getBean(CouponDao.class);
		
	}
	
	public static void main(String[] args) {
		
		DaoTest test = new DaoTest();
		test.daoTest();
		
	}
	
	
	public void daoTest(){
		private String couponCode = "1324";
		private String ownerId = "owner_sohn";
		private String userId = "user_sohn";
		private int commentCode;
		private int couponStatusCode;
		Coupon coupon = new Coupon(couponCode, ownerId, userId, commentCode, couponStatusCode);
		
		dao.insertCoupon(coupon);
		
		//LOG.trace("수업 1 : 부서의 개수는 [dao]: "+dao.getDepartmentCount()); //OK
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
