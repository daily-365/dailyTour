package web.dao.face;

import java.util.List;

import web.dto.BoardDTO;

public interface BoardDAO {

	//글쓰기
	public void writeBoard(BoardDTO board);
	
	//글 리스트보기
	public List<BoardDTO> listBoard();

	//글 상세보기
	public BoardDTO viewBoard(BoardDTO board);
	
	//글 검색
	public List<BoardDTO> searchBoard(BoardDTO board);
	
	//글 수정
	public void updateBoard(); 
		
	//글 삭제
	public void deleteBoard();
	
}
