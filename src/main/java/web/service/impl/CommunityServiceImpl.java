package web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.CommunityDAO;
import web.dto.CommunityDTO;
import web.dto.CommunityReplyDTO;
import web.service.face.CommunityService;
import web.util.SearchCriteria;

@Service
public class CommunityServiceImpl implements CommunityService {

	@Autowired
	CommunityDAO dao;
	

	@Override
	public List<CommunityDTO> AlllistCommunity(CommunityDTO community) {
		
		return dao.AlllistCommunity(community);
	}

	

	@Override
	public void writeCommunity(CommunityDTO community) {
		
		dao.writeCommunity(community);
		
	}



	@Override
	public List<CommunityDTO> listPage(SearchCriteria scri) {
	
		return dao.listPage(scri);
	}

	@Override
	public int count() {
	
    return dao.count();
    
    
	}

	@Override
	public CommunityDTO selectByCommunityNO(CommunityDTO community) {
	
		return dao.selectByCommunityNO(community);
	}



	@Override
	public void writeReply(CommunityReplyDTO commReply) {
	
		dao.writeReply(commReply);
		
	}



	@Override
	public List<CommunityReplyDTO> listAllReply(CommunityReplyDTO commReply) {
		
		return dao.listAllReply(commReply);
	}



	@Override
	public CommunityDTO communityReply(CommunityDTO community) {
		
		return dao.communityReply(community);
	}



	
	
}
