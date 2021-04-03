package web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.MemberDAO;
import web.dto.MemberDTO;
import web.service.face.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO dao;
	
	@Override
	public boolean joinService(MemberDTO member) {
		
		if(dao.join(member)>0) {
			
			return true;
		}else {
			
			return false;
		}
		
	}

	@Override
	public boolean loginService(MemberDTO member) {
		
		if(dao.login(member)>0) {return true;}
		else {return false;}
		
	}

	
	
	
	
}
