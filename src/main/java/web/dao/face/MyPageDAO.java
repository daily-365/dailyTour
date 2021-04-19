package web.dao.face;

import java.util.List;

import web.dto.MemberDTO;

public interface MyPageDAO {

	//회원정보 조회
	public List<MemberDTO> selectByMemberInfo(MemberDTO member);
	
	//회원 정보 수정
	public void modifyMemberInfo(MemberDTO member);
	
	
}
