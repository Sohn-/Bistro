package joojoo.service;

import org.springframework.stereotype.Service;

import joojoo.entity.Owners;
import joojoo.entity.Users;

public interface OwnerService {

	int addOwner(Owners owner);//업주가입
	int updateOwnerInfo(Owners owner);//업주정보수정
	int outOwner(String ownerId);//업주탈퇴
	
	Owners idDuplicateCheck(String ownerId); //업주가입시 id중복체크용
	Owners licensenumberDuplicateCheck(String licensenumber); //업주가입시 사업자 등록번호로 중복 체크 
	Owners mailDuplicateCheck(String owenrMail);//업주 메일 중복체크 
	
	Owners findId(Owners owner); //아이디찾기용 (잊어버렸을때)
	Owners findPassword(Owners owner); //비번찾기용
	Owners OwnersLogin(Owners owner);//로그인
}
