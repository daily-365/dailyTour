package web.dao.face;

import java.util.List;

import web.dto.MateDTO;


public interface MateDAO {

	  //메이트 리스트
	public List<MateDTO> selectAllMate();
	
	//메이트 등록
	public void registMate(MateDTO mate);
}
