package web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.CommuinityDAO;
import web.dto.CommunityDTO;
import web.service.face.CommunityService;

@Service
public class CommunityServiceImpl implements CommunityService {

	@Autowired
	CommuinityDAO dao;
	
	
	@Override
	public List<CommunityDTO> communityListService(CommunityDTO community) {
		
		return dao.communityList(community);
	}

	
	
	
}
