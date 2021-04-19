package web.service.face;

import java.util.List;

import web.dto.BoardDTO;
import web.util.Criteria;


public interface BoardService {


	//글쓰기
	public void writeBoardService(BoardDTO board);
	
	//글 리스트보기
	public List<BoardDTO> listBoardService(BoardDTO board);
	
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
