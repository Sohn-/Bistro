package joojoo.test;

import java.text.ParseException;

import joojoo.dao.RviewCommentDao;
import joojoo.entity.Category;
import joojoo.entity.RviewComment;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class RviewCommentDaoImplTest {
	static final Logger LOG = LoggerFactory
			.getLogger(RviewCommentDaoImplTest.class);

	@Autowired
	//@Qualifier("RviewComment")
	RviewCommentDao dao;

	public RviewCommentDaoImplTest() {
		ApplicationContext ctx = new GenericXmlApplicationContext(
				"spring/application-config2.xml");
		dao = ctx.getBean(RviewCommentDao.class);

	}

	public static void main(String[] args) {

		RviewCommentDaoImplTest test = new RviewCommentDaoImplTest();
		try {
			test.rviewCommentTest();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void rviewCommentTest() throws ParseException {
		String userId = "user";
		 String userName = "유저";
		String title = "후기제목";
		String content = "후기내용";
		int starPoint = 5;
		String storeName="스토어네임2";

		RviewComment rviewComment = new RviewComment();
		

		//성공
		LOG.trace("" + dao.insertRviewComment(rviewComment));
		//LOG.trace("" + dao.getAllRviewComments());
		
		/*
		 * rviewComment.setTitle("변경됨"); rviewComment.setCommentCode(2);
		 * dao.updateRviewComment(rviewComment);
		 */

		// dao.deleteRviewComment(1);

		//dao.getRviewCommentsByUserId(userId);
		 //dao.getRviewCommentsByStoreCode(2);

		
		String regionName = "강남"; 
		String typeName = "고깃집"; 
		String personsLevel = "4명이하"; 
		String serviceTypeName = "서비스 메뉴 제공"; 
		String keyword="게"; 
		Category category = new Category(regionName, typeName, personsLevel, serviceTypeName, keyword);
		 

		dao.getRviewCommentsByKeyword(category);
		// dao.getRviewCommentsByUserName(userName);
		// dao.getRviewCommentsByContent(content);
		 //dao.getRviewCommentsByTitle("제목");
		 //LOG.trace("수업"+dao.getRviewCommentBycommentCode(33));

	}
}
