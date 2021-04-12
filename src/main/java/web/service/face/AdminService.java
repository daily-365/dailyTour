package web.service.face;

import java.util.List;

import web.dto.MemberDTO;
import web.util.SearchCriteria;

public interface AdminService {
   
	//회원목록 전체조회
	public List<MemberDTO> AllMemberListService();
	
	//페이지네이션
		public List<MemberDTO> listPage(SearchCriteria scri);
		
	    public int listCount();
}
