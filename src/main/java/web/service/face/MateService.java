package web.service.face;

import java.util.List;

import web.dto.MateDTO;

public interface MateService {
	
	//메이트 리스트
	public List<MateDTO> selectAllMateService();
}
