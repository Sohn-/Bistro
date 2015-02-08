package joojoo.dao;

import java.util.List;

import joojoo.entity.EventComment;
import joojoo.entity.ReviewComment;



public interface ReviewCommentDao {
	
	int insertReviewComment(ReviewComment reviewComment);
	int updateReviewComment(ReviewComment reviewComment);
	int deleteReviewComment(int commentCode);
	
	List<ReviewComment> getReviewCommentsByUserId(String userId);
	List<ReviewComment> getReviewCommentsByStoreCode(String storeCode);
	List<ReviewComment> getReviewCommentsBySearchKeyword(String keyword);

}
