package joojoo.test;




import joojoo.entity.Users;
import joojoo.entity.WishList;
import joojoo.service.UserService;
import joojoo.service.WishListService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class UserServiceTest {

static final Logger LOG = LoggerFactory.getLogger(StoreDaoTest.class);
	
	@Autowired
	UserService service;
	
	public UserServiceTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config2.xml");
		service = ctx.getBean(UserService.class);
		
	}
	
	public static void main(String[] args) {
		
		UserServiceTest test = new UserServiceTest();
		test.insertTest24();
		
	}
	
	
	public void insertTest24(){
		
		Users user = new Users();
		user.setUserId("nnn");
		user.setUserPassword("fdfg");
		user.setUserName("b");
		user.setUserMail("nn");
		user.setUserPhone("11");
		user.setChance(2);
		
		//service.addUser(user);
		LOG.trace("수업"+service.updateUserInfo(user));
		
		
	
		
	}
}
