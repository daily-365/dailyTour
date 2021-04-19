package web.dao.face;

import java.util.List;

import web.dto.CommunityDTO;
import web.util.SearchCriteria;

public interface CommunityDAO {
   
	
	//커뮤니티 리스트
	public List<CommunityDTO> AlllistCommunity(CommunityDTO community);
	
	//커뮤니티 글쓰기
	public void writeCommunity (CommunityDTO community);
	
	//커뮤니티 리스트 (페이지네이션 / 검색)
	public List<CommunityDTO> listPage(SearchCriteria scri);
	public int count();
	
}
