package joojoo.test;



import joojoo.dao.ReviewCommentDao;
import joojoo.entity.ReviewComment;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;


public class ReviewCommentTest {
	
	static final Logger LOG = LoggerFactory.getLogger(ReviewCommentTest.class);
	
	@Autowired
	ReviewCommentDao dao;
	
	public ReviewCommentTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("application_config.xml");
		dao = ctx.getBean(ReviewCommentDao.class);
	}
	
	public static void main(String[] args) {
		
		ReviewCommentTest test = new ReviewCommentTest();
		test.reviewCommentTest();		
	}
	
	
	public void reviewCommentTest(){	
		
		String ownerId = "hc426797";
		String title = "무봤나촌닭 후기";
		String content = "무봤나촌닭 서비스도 많고 좋아요";
		int starPoint = 8;
		int storeCode = 1;
		
		ReviewComment reviewComment1 = new ReviewComment(ownerId,title,content,starPoint,storeCode);
		
		
		LOG.trace("테스트1 : 리뷰커멘트인서트: "+ dao.insertReviewComment(reviewComment1));
		
		
		
		// LOG.trace("수업 2:"+dao.getDepartmentByIdNoMapping(120));
		// LOG.trace("수업 3:"+dao.getDepartmentCountByLocationId(1700)); //OK
		// LOG.trace("수업 4:"+dao.getDepartmentsByLocationId(1700)); //OK
		// LOG.trace("수업 5:"+dao.getDepartmentById(250)); //OK
		// LOG.trace("수업 6:"+dao.getAllDepartments()); //OK
		// LOG.trace("수업 7:"+dao.getDepartmentsByManagerId(108)); //OK
		// LOG.trace("수업 8:"+dao.getDepartmentByIdWithEmployees(110));
		// dao.getDepartmentByIdWithEmployees(110);

		// Department dept = new Department(1212, "손찬영부서", 108, 1700);
		/*
		 * private int departmentId; private String departmentName; private int
		 * managerId; private int locationId;
		 */
		// LOG.trace("결과 : "+dao.insertDepartment(dept));
		// dept.setDepartmentName("수정됨");
		// dept.setManagerId(205);
		// dept.setLocationId(2700);
		// LOG.trace("결과 : "+dao.updateDepartment(dept));
		// LOG.trace("결과 : "+dao.deleteDepartment(dept.getDepartmentId()));
	}
	


}
