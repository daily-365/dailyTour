package web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.AdminDAO;
import web.dto.MemberDTO;
import web.service.face.AdminService;
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
	public List<MemberDTO> listPage(SearchCriteria scri) {
		return dao.listPage(scri);
	}

	@Override
	public int listCount() {
	return dao.listCount();
	}
	
	
	
	
	
}
