package joojoo.test;

import java.sql.Date;
import java.text.SimpleDateFormat;

import joojoo.entity.Coupon;
import joojoo.entity.EventComment;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class EventCommentDaoImplTest {
static final Logger LOG = LoggerFactory.getLogger(EventCommentDaoImplTest.class);
	
	@Autowired
	@Qualifier("EventComment")
	EventComment dao;
	
	public EventCommentDaoImplTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config.xml");
		dao = ctx.getBean(EventComment.class);
		
	}
	
	public static void main(String[] args) {
		
		EventCommentDaoImplTest test = new EventCommentDaoImplTest();
		test.eventCommentTest();
		
	}
	
	public void eventCommentTest(){
		String commentCode = "1324";
		String title = "제목";
		String content = "eventComment 내용";
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String start = "2015-02-09";
/*		Date startDate = dateFormat.parse(start);
		Date endDate = new Date(2015, 2, 9);*/
		int storeCode = 1;
		int personsCode = 1;
		int serviceTypeCode = 1;
		String deleteRequest;
		
		EventComment eventComment = new EventComment(couponCode, ownerId, userId, commentCode, couponStatusCode);
		
		dao.insertCoupon(coupon);
	}
}
