package joojoo.test;

import java.text.ParseException;

import joojoo.dao.RviewCommentDao;
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
	@Qualifier("ReviewComment")
	RviewCommentDao dao;

	public RviewCommentDaoImplTest() {
		ApplicationContext ctx = new GenericXmlApplicationContext(
				"spring/application-config.xml");
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
		// String userName = "유저";
		String title = "후기제목";
		String content = "후기내용";
		int starPoint = 5;
		int storeCode = 1;

		RviewComment rviewComment = new RviewComment(userId, title, content, starPoint, storeCode);

		//성공
		//LOG.trace("" + dao.insertRviewComment(rviewComment));
		//LOG.trace("" + dao.getAllRviewComments());
		
		/*
		 * rviewComment.setTitle("변경됨"); rviewComment.setCommentCode(2);
		 * dao.updateRviewComment(rviewComment);
		 */

		// dao.deleteRviewComment(1);

		// dao.getRviewCommentsByUserId(userId);
		// dao.getRviewCommentsByStoreCode(storeCode);

		/*
		 * int regionCode = 0; int typeCode = 0; int personsCode = 0; int
		 * serviceTypeCode = 0; String keyword="변경됨"; Category category = new
		 * Category(regionCode, typeCode, personsCode, serviceTypeCode,
		 * keyword);
		 */

		// dao.getRviewCommentsByKeyword(category);
		// dao.getRviewCommentsByUserName(userName);
		// dao.getRviewCommentsByContent(content);
		// dao.getRviewCommentsByTitle(title);

	}
}
