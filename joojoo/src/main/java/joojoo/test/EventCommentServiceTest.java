package joojoo.test;

import joojoo.entity.All;
import joojoo.exception.ServiceFailException;
import joojoo.service.EventCommentService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class EventCommentServiceTest {
	
static final Logger logger = LoggerFactory.getLogger(EventCommentServiceTest.class);
	
	
	@Autowired
	EventCommentService service;
	
	public EventCommentServiceTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config.xml");
		service = ctx.getBean(EventCommentService.class);
	}
	
	public static void main(String[] args) throws ServiceFailException {
		
		EventCommentServiceTest test = new EventCommentServiceTest();
		test.serviceTest();
		
		
	}
	
	
	public void serviceTest(){		
/*		List<EventComment> SeachByKeyword(Category category); //키워드로 이벤트 검색
		List<EventComment> SeachByCategory(Category category); //카테고리 이벤트 검색
		List<EventComment> SeachMyEvent(String ownerId); //업주회원 내 이벤트 조회
		int registEvent(EventComment eventComment, Stores store); //업주회원 마이페이지 이벤트 등록
		int modifyEvent(EventComment eventComment); //업주회원 마이페이지 이벤트 수정
		int requestDeleteEvent(EventComment eventComment); //업주회원 마이페이지 삭제 요청
		EventComment SearchOneEvent(int commentCode); //이벤트 하나 상세 조회	
*/		
		int commentCode = 1;
		logger.trace(""+service.SearchOneEvent(commentCode));
		
		All eventComment = service.SearchOneEvent(commentCode);
		logger.trace("수업:"+eventComment);
		
		service.requestDeleteEvent(eventComment);
		
	
	}


}
