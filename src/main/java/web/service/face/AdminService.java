package web.service.face;

import java.util.List;

import web.dto.BoardDTO;
import web.dto.MemberDTO;
import web.util.Criteria;
import web.util.SearchCriteria;

public interface AdminService {
   
	//회원목록 전체조회
	public List<MemberDTO> AllMemberListService();
	
	//페이지네이션
		public List<MemberDTO> listMemberPage(SearchCriteria scri);
		
	    public int listMemberCount();
	    
	    
		//글쓰기
		public void writeBoardService(BoardDTO board);
		
		//글 리스트보기
		public List<BoardDTO> listBoardService();
		
		//글 상세보기
		public BoardDTO viewBoardService(BoardDTO board);
		
		//조회수 증가
		public void visitCountService(int boardNo);	
		
		//글 수정
		public void updateBoardService(BoardDTO board); 
			
		//글 삭제
		public void deleteBoardService(int boardNo);
		
		//페이지네이션
		public List<BoardDTO> listBoardPage(Criteria cri);
		public int listBoardCount();
}
