package web.service.face;

import java.util.List;

import web.dto.BoardDTO;

public interface BoardService {

	//글쓰기
	public void writeBoardService(BoardDTO board);
	
	//글 리스트보기
	public List<BoardDTO> listBoardService();
	
	//글 상세보기
	public BoardDTO viewBoardService(BoardDTO board);
	
	//글 검색
	public List<BoardDTO> searchBoardService(BoardDTO board);
	
	//글 수정
	public void updateBoardService(); 
		
	//글 삭제
	public void deleteBoardService();
	
}
