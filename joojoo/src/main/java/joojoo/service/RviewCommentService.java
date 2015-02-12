package joojoo.service;

import java.util.List;

import joojoo.entity.All;
import joojoo.entity.Category;
import joojoo.entity.RviewComment;
import joojoo.entity.Stores;

public interface RviewCommentService {
	
	List<All> SearchAll();
	List<All> SearchByUserId(String userId);
	List<All> SearchByTitle(String title);
	List<All> SearchByContetnt(String content);
	List<All> SearchByStoerName(String storeName);
	List<All> SearchByKeyword(Category category); 
	
	int registRview(RviewComment rviewComment, Stores store); 
	int modifyRview(RviewComment rviewComment); 
	int deleteRview(String userId, int commentCode);
	
	//이미지 등록 이미지 업로드 유틸
}
