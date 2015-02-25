package joojoo.test;

import java.util.List;

import joojoo.dao.CouponDao;
import joojoo.entity.All;
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
	@Qualifier("Coupon")
	CouponDao dao;
	
	public CouponDaoImplTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config2.xml");
		dao = ctx.getBean(CouponDao.class);
		
	}
	
	public static void main(String[] args) {
		
		CouponDaoImplTest test = new CouponDaoImplTest();
		test.couponTest();
		
	}
	
	public void couponTest(){
		String couponCode = "1324";
		String ownerId = "sohn";
		String userId = "user";
		int commentCode = 1;
		String couponStatus = "미사용";
		Coupon coupon = new Coupon(couponCode, ownerId, userId, commentCode, couponStatus);
		
		All coupon1 = new All();
		coupon1.setCouponStatus("미사용");
		coupon1.setCouponCode("joojoo");
		coupon1.setOwnerId("sohn");
		coupon1.setUserId("user");
		coupon1.setCommentCode(1);
		
		//dao.insertCoupon(coupon);
		
		//coupon.setCouponStatusCode(3);
		dao.updateCoupon(coupon1);
		
		//dao.deleteCoupon("1324");
		
		
	/*	List<Coupon> getCouponsByUserId(String userId);
		List<Coupon> getCouponsByOwnerId(String ownerId);
		List<Coupon> getCouponsByStatus(int couponStatusCode);*/
		
		/*dao.getCouponsByOwnerId("sohn");
		
		dao.getCouponsByOwnerId("sohn");*/
		
		//dao.getCouponsByStatus(couponStatus);
		
		//dao.getCouponsByCouponCode(couponCode);
		Coupon c = new Coupon();
		c.setUserId("user");
		c.setCouponStatus("미사용");
		
		//LOG.trace("수업"+dao.getCouponsByStatusAndUserId(c));
		
		
		
	}
}
