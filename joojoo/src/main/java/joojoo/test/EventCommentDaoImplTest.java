package joojoo.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import joojoo.dao.EventCommentDao;
import joojoo.entity.Category;
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
	EventCommentDao dao;
	
	public EventCommentDaoImplTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config2.xml");
		dao = ctx.getBean(EventCommentDao.class);
		
	}
	
	public static void main(String[] args) {
		
		EventCommentDaoImplTest test = new EventCommentDaoImplTest();
		try {
			test.eventCommentTest();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void eventCommentTest() throws ParseException{
		String title = "자바로삽입";
		String content = "자바로삽입";
		
/*		insert into event_comment(title, content, start_date, end_date, store_code, persons_code, service_type_code)
		values('제목','내용',to_date(sysdate, 'yyyy-mm-dd HH:mm:ss'), to_date(sysdate, 'yyyy-mm-dd'), 1, 0, 0);*/
		
		/*SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String start = "2015-02-09";
		Date startDate = dateFormat.parse(start);
		String end = "2015-02-09";
		Date endDate = (Date) dateFormat.parse(end);
		int storeCode = 1;
		int personsCode = 0;
		int serviceTypeCode = 0;
		


		EventComment eventComment = new EventComment(title, content, startDate, endDate, storeCode, personsCode, serviceTypeCode);*/



		//dao.insertEventComment(eventComment);
		
		//eventComment.setTitle("변경됨");
		//eventComment.setCommentCode(5);
		//dao.updateEventComment(eventComment);
		
		//dao.deleteEventComment(5);
		
		String regionName = "none";
		String typeName = "고깃집";
		String personsLevel = "4명이하";
		String serviceTypeName = "서비스 메뉴 제공";
		String keyword="제목";
		Category category = new Category(regionName, typeName, personsLevel, serviceTypeName, keyword);
		//dao.getEventCommentsByCategory(category);
		
		
		//dao.getEventCommentsByKeyword(category);
		
		//dao.getEventCommentsByRegionCode(regionCode);
		//dao.getEventCommentsByServiceTypeCode(serviceTypeCode);
		//dao.getEventCommentsByPersonsCode(personsCode);
		//dao.getEventCommentsByServiceTypeCode(serviceTypeCode);
		
		//dao.getAllEventComments();
		//dao.getEventCommentsByOwnerId("sohn");
		
		//int commentCode = 1;
		//dao.getEventCommentByCommentCode(1);
		/*EventComment e = new EventComment();
		e.setContent(content);
		e.setTitle("집같이편안한);
		
		dao.getCommentCodeByOthers(e);*/

	}
}
