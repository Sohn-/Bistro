package joojoo.test;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;



public class ContextTest {
	
	static final Logger LOG = LoggerFactory.getLogger(ContextTest.class);
	
	
	public static void main(String[] args) {
		
		ApplicationContext ctx = new GenericXmlApplicationContext("application-config.xml");
		ContextTest test = new ContextTest();
		
		
		DataSource source = ctx.getBean(DataSource.class);
		LOG.trace("수업:"+source);
		
		/*JdbcTemplate temp = ctx.getBean(JdbcTemplate.class);
		LOG.trace("수업:"+temp);*/
		
		
		//test.daoTest(ctx);
		//test.serviceTest(ctx);
		//test.myBatisTest(ctx);
	}
/*	public void daoTest(ApplicationContext ctx){
		
		DepartmentDao dao = ctx.getBean(DepartmentDao.class);
		//LOG.trace("수업 1 : 부서의 개수는 [dao]: "+dao.getDepartmentCount());
		//LOG.trace("수업 2:"+dao.getDepartmentByIdNoMapping(120));
		LOG.trace("수업 3:"+dao.getDepartmentCountByLocationId(1700));
		//LOG.trace("수업 4:"+dao.getDepartmentsByLocationId(1700));
	}*/
	
	
/*	public void serviceTest(ApplicationContext ctx){
		
		DepartmentDao dao = ctx.getBean(DepartmentDao.class);
		DepartmentService service = ctx.getBean(DepartmentService.class);
		LOG.trace("수업 : 부서의 개수는 [서비스]: "+service.getDeptCnt());
	}*/

}
