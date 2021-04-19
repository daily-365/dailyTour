package web.service.face;

import java.util.List;

import web.dto.CommunityDTO;
import web.dto.CommunityReplyDTO;
import web.util.SearchCriteria;

public interface CommunityService {

	
	//커뮤니티 리스트
		public List<CommunityDTO> AlllistCommunity(CommunityDTO community);
	
	//커뮤니티 글쓰기
	public void writeCommunity (CommunityDTO community);
	
	//커뮤니티 리스트 (페이지네이션 / 검색)
	public List<CommunityDTO> listPage(SearchCriteria scri);
	public int count();
	
	    //커뮤니티 상세보기
		public CommunityDTO selectByCommunityNO(CommunityDTO community);
		
		
		//덧글 달기
		public void writeReply(CommunityReplyDTO commReply);
		
		//모든 덧글 리스트
		public List<CommunityReplyDTO> listAllReply (CommunityReplyDTO commReply);
		
		//댓글 제목
		public CommunityDTO communityReply(CommunityDTO community);
}
