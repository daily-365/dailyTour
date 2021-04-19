package web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.MateDAO;
import web.dto.MateDTO;
import web.service.face.MateService;

@Service
public class MateServiceImpl implements MateService{

	@Autowired
	private MateDAO dao;
	
	@Override
	public List<MateDTO> selectAllMateService() {

		return dao.selectAllMate();
		
	}

	@Override
	public void registMate(MateDTO mate) {
        dao.registMate(mate);
		
	}

		
}
