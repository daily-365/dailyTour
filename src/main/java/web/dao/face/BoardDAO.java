package web.dao.face;

import java.util.List;

import web.dto.BoardDTO;
import web.util.Criteria;



public interface BoardDAO {


	//글쓰기
	public void writeBoard(BoardDTO board);
	
	//글 리스트보기
	public List<BoardDTO> listBoard(BoardDTO board);

	//글 상세보기
	public BoardDTO viewBoard(BoardDTO board);
	
	//조회수 증가
	public void visitCount(int boardNo);
	
	//글 수정
	public void updateBoard(BoardDTO board); 
		
	//글 삭제
	public void deleteBoard(int boardNo);
	
	//페이지네이션
	public List<BoardDTO> listBoardPage(Criteria cri);
	public int listBoardCount();
	
}
