package joojoo.dao;

import java.util.List;

import joojoo.entity.Category;
import joojoo.entity.RviewComment;


//모든 get함수들을 join으로 출력하고 있음.
public interface RviewCommentDao {
	
	int insertRviewComment(RviewComment rviewComment);
	int updateRviewComment(RviewComment rviewComment);
	int deleteRviewComment(int commentCode);
	List<RviewComment> getAllRviewComments();
	List<RviewComment> getRviewCommentsByUserId(String userId);
	List<RviewComment> getRviewCommentsByStoreCode(int storeCode);
	List<RviewComment> getRviewCommentsByKeyword(Category category);
	
	//리뷰커멘트 이름,아이디, 제목, 내용으로 검색하기 기능
	List<RviewComment> getRviewCommentsByUserName(String userName);
	List<RviewComment> getRviewCommentsByContent(String content);
	List<RviewComment> getRviewCommentsByTitle(String title);
	List<RviewComment> getRviewCommentsByStoreName(String storeName);


}
