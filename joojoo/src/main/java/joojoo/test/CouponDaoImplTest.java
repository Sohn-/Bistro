package joojoo.test;

import joojoo.dao.CouponDao;
import joojoo.entity.Coupon;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CouponDaoImplTest {
static final Logger LOG = LoggerFactory.getLogger(CouponDaoImplTest.class);
	
	@Autowired
	@Qualifier("CouponDao")
	CouponDao dao;
	
	public CouponDaoImplTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config.xml");
		dao = ctx.getBean(CouponDao.class);
		
	}
	
	public static void main(String[] args) {
		
		CouponDaoImplTest test = new CouponDaoImplTest();
		test.couponTest();
		
	}
	
	public void couponTest(){
		String couponCode = "1324";
		String ownerId = "owner_sohn";
		String userId = "user_sohn";
		int commentCode = 1;
		int couponStatusCode = 1;
		Coupon coupon = new Coupon(couponCode, ownerId, userId, commentCode, couponStatusCode);
		
		dao.insertCoupon(coupon);
	}
}
