package web.dao.face;

import java.util.List;

import web.dto.MemberDTO;
import web.util.SearchCriteria;

public interface AdminDAO {
   
	//회원목록  전체조회 
	public List<MemberDTO> AllMemberList();
	
	//페이지네이션
	public List<MemberDTO> listMemberPage(SearchCriteria scri);
	
    //총 게시글 갯수 출력
    public int listMemberCount();
	
    
    


}
