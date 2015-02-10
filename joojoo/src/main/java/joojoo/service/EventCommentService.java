package joojoo.service;

import java.util.List;

import joojoo.entity.Category;
import joojoo.entity.Coupon;
import joojoo.entity.EventComment;
import joojoo.entity.Stores;

public interface EventCommentService {
	
	List<EventComment> SeachByKeyword(Category category); //키워드로 이벤트 검색
	List<EventComment> SeachByCategory(Category category); //카테고리 이벤트 검색
	List<EventComment> SeachMyEvent(String ownerId); //업주회원 내 이벤트 조회
	int registEvent(EventComment eventComment, Stores store); //업주회원 마이페이지 이벤트 등록
	int modifyEvent(EventComment eventComment); //업주회원 마이페이지 이벤트 수정
	int requestDeleteEvent(EventComment eventComment); //업주회원 마이페이지 삭제 요청
	EventComment SearchOneEvent(int commentCode); //이벤트 하나 상세 조회	
	

}
