package web.service.face;

import web.dto.MemberDTO;

public interface MemberService {

	
	//회원가입
	public boolean joinService(MemberDTO member);
	
	//로그인
	public MemberDTO loginService(MemberDTO member);
}
