package web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.BoardDAO;
import web.dto.BoardDTO;
import web.service.face.BoardService;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO dao;
	
	@Override
	public void writeBoardService(BoardDTO board) {

		 dao.writeBoard(board);
		
	}

	@Override
	public List<BoardDTO> listBoardService() {
	
		return dao.listBoard();
	}

	@Override
	public void updateBoardService() {
		dao.updateBoard();
		
	}

	@Override
	public void deleteBoardService() {
		dao.deleteBoard();
		
	}


	@Override
	public BoardDTO viewBoardService(BoardDTO board) {
		return dao.viewBoard(board);
	}

	@Override
	public List<BoardDTO> searchBoardService(BoardDTO board) {
		
		return dao.searchBoard(board);
	}



	
	
	
}
