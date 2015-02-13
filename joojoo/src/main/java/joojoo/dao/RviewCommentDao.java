package joojoo.dao;

import java.util.List;

import joojoo.entity.All;
import joojoo.entity.Category;
import joojoo.entity.RviewComment;


//모든 get함수들을 join으로 출력하고 있음.
public interface RviewCommentDao {
	
	int insertRviewComment(RviewComment rviewComment);
	int updateRviewComment(RviewComment rviewComment);
	int deleteRviewComment(int commentCode);
	List<All> getAllRviewComments();
	List<All> getRviewCommentsByUserId(String userId);
	List<All> getRviewCommentsByStoreCode(int storeCode);
	List<All> getRviewCommentsByKeyword(Category category);
	All getRviewCommentBycommentCode(int commentCode);
	//리뷰커멘트 이름,아이디, 제목, 내용으로 검색하기 기능
	List<All> getRviewCommentsByUserName(String userName);
	List<All> getRviewCommentsByContent(String content);
	List<All> getRviewCommentsByTitle(String title);
	List<All> getRviewCommentsByStoreName(String storeName);


}
