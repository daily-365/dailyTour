package web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.AdminDAO;
import web.dto.BoardDTO;
import web.dto.MemberDTO;
import web.service.face.AdminService;
import web.util.Criteria;
import web.util.SearchCriteria;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDAO dao;

	@Override
	public List<MemberDTO> AllMemberListService() {
	
		return dao.AllMemberList();
	}

	@Override
	public List<MemberDTO> listMemberPage(SearchCriteria scri) {
	
		return dao.listMemberPage(scri);
	}

	@Override
	public int listMemberCount() {
		
		return dao.listMemberCount();
	}

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
