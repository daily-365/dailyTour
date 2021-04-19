package web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.MyPageDAO;
import web.dto.MemberDTO;
import web.service.face.MyPageService;

@Service
public class MyPageServiceImpl implements MyPageService {

	
	@Autowired 
    MyPageDAO dao;
	

	@Override
	public List<MemberDTO> selectByMemberInfo(MemberDTO member) {
		
	return dao.selectByMemberInfo(member);
	
	}

	

	@Override
	public void modifyMemberInfo(MemberDTO member) {

		 dao.modifyMemberInfo(member);
		
	}




	
	
}
