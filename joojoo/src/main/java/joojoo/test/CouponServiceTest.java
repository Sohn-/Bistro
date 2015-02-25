package joojoo.test;


import joojoo.entity.Coupon;
import joojoo.service.CouponService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CouponServiceTest {

static final Logger LOG = LoggerFactory.getLogger(StoreDaoTest.class);
	
	@Autowired
	CouponService service;
	
	public CouponServiceTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config2.xml");
		service = ctx.getBean(CouponService.class);
		
	}
	
	public static void main(String[] args) {
		
		CouponServiceTest test = new CouponServiceTest();
		test.getCouponTest();
		
		
	}
	
	
	public void getCouponTest(){
			
	/*
		Coupon coupon = new Coupon();
		
		coupon.setCommentCode(1);
		coupon.setCouponCode("coupon3");
		coupon.setCouponStatus("미사용");
		coupon.setOwnerId("sohn");
		coupon.setUserId("user");*/
		//LOG.trace("수업"+service.getCouponsByUserId("1234"));
		/*성공*/
		//LOG.warn("getCouponsByUserId : "+service.getCouponsByUserId("user"));
		//LOG.warn("getCouponsByOwnerId : "+service.getCouponsByOwnerId("sohn"));
		//LOG.warn("insertCoupon : "+service.insertCoupon(coupon));
		//LOG.warn("checkCoupon : "+service.checkCoupon("coupon3"));
		//LOG.warn("timeover : "+service.timeoverCoupon("user"));
		//LOG.warn("refundCoupon : "+service.refundCoupon("joojoo")); //환불하고 유저 찬스 변경해야함 
		
		/*실패*/
	
		LOG.warn("buyCoupon : "+service.buyCoupon("user",24));
			
		
		
	}
}
