package joojoo.test;

import joojoo.exception.ServiceFailException;
import joojoo.service.EventCommentService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class EventCommentServiceTest {
	
static final Logger LOG = LoggerFactory.getLogger(DaoTest.class);
	
	
	@Autowired
	EventCommentService service;
	
	public EventCommentServiceTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("application_config.xml");
		service = ctx.getBean(EventCommentService.class);
	}
	
	public static void main(String[] args) throws ServiceFailException {
		
		EventCommentServiceTest test = new EventCommentServiceTest();
		test.serviceTest();
		
		
	}
	
	
	public void serviceTest(){		
		
	
	}


}
