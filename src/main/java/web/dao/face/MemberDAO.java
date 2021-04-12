package web.dao.face;

import web.dto.MemberDTO;

public interface MemberDAO {

	//회원가입
	public int join(MemberDTO member);
	
	//로그인
	public MemberDTO login(MemberDTO member);
	
	
	
	
	
	
}
