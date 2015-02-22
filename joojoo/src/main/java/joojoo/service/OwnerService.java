package joojoo.service;

import joojoo.entity.All;
import joojoo.entity.Owners;

public interface OwnerService {

	int addOwner(Owners owner);//업주가입
	int updateOwnerInfo(Owners owner);//업주정보수정
	int outOwner(String ownerId);//업주탈퇴
	
	All idDuplicateCheck(String ownerId); //업주가입시 id중복체크용
	All licensenumberDuplicateCheck(String licensenumber); //업주가입시 사업자 등록번호로 중복 체크 
	All mailDuplicateCheck(String owenrMail);//업주 메일 중복체크 
	
	All findId(Owners owner); //아이디찾기용 (잊어버렸을때)
	All findPassword(Owners owner); //비번찾기용
	All OwnersLogin(Owners owner);//로그인
	
	All getOwnersByOwnerId(String ownerId);//로그인
}
