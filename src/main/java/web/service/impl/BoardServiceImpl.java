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
	public List<BoardDTO> listBoardService() {
	
		return dao.listBoard();
	}




	@Override
	public BoardDTO viewBoardService(BoardDTO board) {
		return dao.viewBoard(board);
	}

	@Override
	public List<BoardDTO> listPage(Criteria cri) {
		
		return dao.listPage(cri);
	}

	@Override
	public int listCount() {
		
		return dao.listCount();
	}

	@Override
	public void visitCountService(int boardNo) {
	  
		dao.visitCount(boardNo);
		
	}




	
	
	
}
