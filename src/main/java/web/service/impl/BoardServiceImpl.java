package web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.BoardDAO;
import web.dto.BoardDTO;
import web.service.face.BoardService;
import web.util.Criteria;


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
	public BoardDTO viewBoardService(BoardDTO board) {
		
		return dao.viewBoard(board);
	}

	@Override
	public void visitCountService(int boardNo) {
	
	 dao.visitCount(boardNo);
		
	}

	@Override
	public void updateBoardService(BoardDTO board) {
		
		dao.updateBoard(board);
	}

	@Override
	public void deleteBoardService(int boardNo) {
		
		dao.deleteBoard(boardNo);
		
	}

	@Override
	public List<BoardDTO> listBoardPage(Criteria cri) {
		
		return dao.listBoardPage(cri);
	}

	@Override
	public int listBoardCount() {
		
		return dao.listBoardCount();
	}


	
	
	
}
