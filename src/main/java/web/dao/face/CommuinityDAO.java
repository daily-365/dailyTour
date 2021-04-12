package web.dao.face;

import java.util.List;

import web.dto.CommunityDTO;

public interface CommuinityDAO {
   
	
	//커뮤니티 리스트
	public List<CommunityDTO> communityList(CommunityDTO community);
	
	
}
