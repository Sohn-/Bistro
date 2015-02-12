package joojoo.test;


import joojoo.entity.Category;
import joojoo.entity.RviewComment;
import joojoo.entity.Stores;
import joojoo.service.RviewCommentService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ReviewCommentServiceTest {

static final Logger LOG = LoggerFactory.getLogger(ReviewCommentServiceTest.class);
	
	@Autowired
	RviewCommentService service;
	
	@Autowired
	Category category;
	
	public ReviewCommentServiceTest(){
		ApplicationContext ctx = new GenericXmlApplicationContext("spring/application-config.xml");
		service = ctx.getBean(RviewCommentService.class);
		
	}
	
	public static void main(String[] args) {
		
		ReviewCommentServiceTest test = new ReviewCommentServiceTest();
		test.getRviewCommentTest();
		
	}	
	
	public void getRviewCommentTest(){
			
	
		RviewComment rviewComment = new RviewComment();
		Stores store = new Stores();
		Category category2 = new Category();
		rviewComment.setTitle("후기 타이틀 테스트 합니다.");
		rviewComment.setContent("후기내용 테스트 합니다.");
		rviewComment.setStarPoint(4);
		rviewComment.setStoreCode(1);
		rviewComment.setUserId("user");
		category2.setKeyword("후기");
		store.setStoreCode(1);
		store.setOwnerId("sohn");
		store.setStoreName("가게이름");
		store.setStoreAdress("가게주소");
		store.setRegionCode(1);
		store.setStarPoint(1);
		
		
		/*성공*/
		//LOG.warn("getCouponsByUserId : "+service.SearchAll());
		//LOG.warn("getCouponsByUserId : "+service.SearchByUserId("user"));
		//LOG.warn("getCouponsByUserId : "+service.SearchByTitle("제목"));
		//LOG.warn("getCouponsByUserId : "+service.SearchByContetnt("후기내용"));
		//LOG.warn("getCouponsByUserId : "+service.SearchByKeyword(category2));		
		//LOG.warn("registRview : "+service.registRview(rviewComment, store));				
		
	}
}
