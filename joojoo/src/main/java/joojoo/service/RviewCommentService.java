package joojoo.service;

import java.util.List;

import joojoo.entity.Category;
import joojoo.entity.EventComment;
import joojoo.entity.RviewComment;
import joojoo.entity.Stores;

public interface RviewCommentService {
	
	List<RviewComment> SearchAll();
	List<RviewComment> SearchByUserId(String userId);
	List<RviewComment> SearchByMyId(String userId);
	List<RviewComment> SearchByTitle(String title);
	List<RviewComment> SearchByContetnt(String content);
	List<RviewComment> SearchByStoerName(String storeName);
	List<RviewComment> SearchByKeyword(Category category); //키워드로 이벤트 검색
		
	//List<RviewComment> SeachByCategory(Category category); //카테고리 이벤트 검색
	//List<RviewComment> SeachMyEvent(String ownerId); //업주회원 내 이벤트 조회
	
	int registEvent(RviewComment eventComment, Stores store); //업주회원 마이페이지 이벤트 등록
	int modifyEvent(RviewComment eventComment); //업주회원 마이페이지 이벤트 수정
	int deleteEvent(EventComment eventComment); //업주회원 마이페이지 삭제 요청
	int requestDeleteEvent(EventComment eventComment); //업주회원 마이페이지 삭제 요청
	
	EventComment SearchOneRviewComment(int commentCode); //이벤트 하나 상세 조회	
	//이미지 등록 이미지 업로드 유틸
	

}
