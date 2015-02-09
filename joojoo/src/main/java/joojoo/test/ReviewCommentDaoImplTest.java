package joojoo.test;

import java.text.ParseException;

import joojoo.dao.ReviewCommentDao;
import joojoo.entity.ReviewComment;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ReviewCommentDaoImplTest {
static final Logger LOG = LoggerFactory.getLogger(ReviewCommentDaoImplTest.class);
	
	@Autowired
	@Qualifier("ReviewComment")
	ReviewCommentDao dao;
	
	public ReviewCommentDaoImplTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config.xml");
		dao = ctx.getBean(ReviewCommentDao.class);
		
	}
	
	public static void main(String[] args) {
		
		ReviewCommentDaoImplTest test = new ReviewCommentDaoImplTest();
		try {
			test.reviewCommentTest();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void reviewCommentTest() throws ParseException{
		String ownerId = "sohn";
		String userId = "user";
		String title = "자바로삽입";
		String content = "자바로삽입";
		int starPoint = 5;
		int storeCode = 1;
/*		insert into review_comment(owner_id, user_id, title, content, star_point, store_code) 
		values(#{ownerId}, #{userId}, #{title}, #{content}, #{starPoint}, #{storeCode})	*/


		ReviewComment reviewComment = new ReviewComment(ownerId, userId, title, content, starPoint, storeCode);



		//dao.insertEventComment(eventComment);
		dao.insertReviewComment(reviewComment);
		
		//eventComment.setTitle("변경됨");
		//eventComment.setCommentCode(5);
		//dao.updateEventComment(eventComment);
		
		//dao.deleteEventComment(5);
		
/*		int regionCode = 0;
		int typeCode = 0;
		int personsCode = 0;
		int serviceTypeCode = 0;
		String keyword="자바로삽입";
		Category category = new Category(regionCode, typeCode, personsCode, serviceTypeCode, keyword);
		//dao.getEventCommentsByCategory(category);
		
		
		dao.getEventCommentsBySearchKeyword(category);*/

	}
}
