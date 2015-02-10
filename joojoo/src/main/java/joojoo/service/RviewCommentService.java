package joojoo.service;

import java.util.List;

import joojoo.entity.Category;
import joojoo.entity.RviewComment;
import joojoo.entity.Stores;

public interface RviewCommentService {
	
	List<RviewComment> SearchAll();
	List<RviewComment> SearchByUserId(String userId);
	List<RviewComment> SearchByTitle(String title);
	List<RviewComment> SearchByContetnt(String content);
	List<RviewComment> SearchByStoerName(String storeName);
	List<RviewComment> SearchByKeyword(Category category); 
	
	int registRview(RviewComment rviewComment, Stores store); 
	int modifyRview(RviewComment rviewComment); 
	int deleteRview(String userId, int commentCode);
	
	//이미지 등록 이미지 업로드 유틸
}
