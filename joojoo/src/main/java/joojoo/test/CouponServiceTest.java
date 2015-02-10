package joojoo.test;


import java.util.List;

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
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config.xml");
		service = ctx.getBean(CouponService.class);
		
	}
	
	public static void main(String[] args) {
		
		CouponServiceTest test = new CouponServiceTest();
		test.getCouponTest();
		
	}
	
	
	public void getCouponTest(){
	
		List<Coupon> coupon = service.getCouponsByUserId("shon");
		
		LOG.trace("getCouponsByUserId : "+service.getCouponsByUserId("user"));
		//"수업" +service.showStoresBySerchKeyword(c));
	
		
		
	
		
	}
}
