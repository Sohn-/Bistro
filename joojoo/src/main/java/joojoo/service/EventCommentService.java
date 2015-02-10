package joojoo.service;

import java.util.List;

import joojoo.entity.Category;
import joojoo.entity.Coupon;
import joojoo.entity.EventComment;

public interface EventCommentService {
	
	List<EventComment> SeachByKeyword(Category category); //키워드로 이벤트 검색
	List<EventComment> SeachByCategory(Category category); //카테고리 이벤트 검색
	List<EventComment> SeachMyEvent(String ownerId); //업주회원 내 이벤트 조회
	int registEvent(String ownerId); //업주회원 마이페이지 이벤트 등록
	int modifyEvent(int comment_code); //업주회원 마이페이지 이벤트 수정
	int requestDeleteEvent(int comment_code); //업주회원 마이페이지 삭제 요청
	EventComment SearchOneEvent(int comment_code); //이벤트 하나 상세 조회	
	

}
