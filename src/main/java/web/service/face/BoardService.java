package web.service.face;

import java.util.List;

import web.dto.BoardDTO;
import web.util.Criteria;


public interface BoardService {

	//글쓰기
	public void writeBoardService(BoardDTO board);
	
	//글 리스트보기
	public List<BoardDTO> listBoardService();
	
	//글 상세보기
	public BoardDTO viewBoardService(BoardDTO board);
	
	//조회수 증가
	public void visitCountService(int boardNo);	
	
	//글 수정
	public void updateBoardService(); 
		
	//글 삭제
	public void deleteBoardService();
	
	//페이지네이션
	public List<BoardDTO> listPage(Criteria cri);
	public int listCount();
	
	
}
