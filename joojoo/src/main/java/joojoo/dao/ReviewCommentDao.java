package joojoo.dao;

import java.util.List;

import joojoo.entity.Category;
import joojoo.entity.ReviewComment;



public interface ReviewCommentDao {
	
	int insertReviewComment(ReviewComment reviewComment);
	int updateReviewComment(ReviewComment reviewComment);
	int deleteReviewComment(int commentCode);
	
	List<ReviewComment> getReviewCommentsByUserId(String userId);
	List<ReviewComment> getReviewCommentsByStoreCode(int storeCode);
	List<ReviewComment> getReviewCommentsBySearchKeyword(Category category);


}
