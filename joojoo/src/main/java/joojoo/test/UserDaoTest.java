package joojoo.test;

import joojoo.dao.UsersDao;
import joojoo.entity.Owners;
import joojoo.entity.Users;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;


public class UserDaoTest {
	
	static final Logger LOG = LoggerFactory.getLogger(UserDaoTest.class);
	
	@Autowired
	UsersDao dao;
	
	public UserDaoTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config.xml");
		dao = ctx.getBean(UsersDao.class);
		
	}
	
	public static void main(String[] args) {
		
		UserDaoTest test = new UserDaoTest();
		test.daoTest();
		
	}
	
	
	public void daoTest(){
		Users user1 = new Users();
		user1.setUserId("aaa");
		user1.setChance(5);
		user1.setUserMail("aaa1");
		user1.setUserName("aaa1");
		user1.setUserPassword("aaa");
		user1.setUserPhone("aaa");
		
		
		//LOG.trace("수업 1 : 부서의 개수는 [dao]: "+dao.insertUser(user1)); //OK
		//LOG.trace(user1.toString());
		//LOG.trace("수업 1 :  "+dao.updateUser(user1)); //OK
		//LOG.trace("수업 1:" +dao.getUsersByUserId("ansoog1"));
		//LOG.trace("수업 1:" +dao.getUsersByUserMail("asdf24243324"));
		LOG.trace("수업 1:" +dao.getUsersForIdFind(user1));
		//LOG.trace("수업1:"+dao.getUsersForPassWordFind(user1));
		
		
	}
	


}
