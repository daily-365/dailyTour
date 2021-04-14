package web.dao.face;

import java.util.List;

import web.dto.InquiryDTO;

public interface InqueryDAO {

	//문의게시판 전체 리스트
	public List<InquiryDTO>  allinquiryList(InquiryDTO inquiry);
	
	//문의게시판 글쓰기
	public void inquiryWrite(InquiryDTO inquiry);
}
