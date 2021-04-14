package web.service.face;

import java.util.List;

import web.dto.InquiryDTO;

public interface InquiryService {

	//문의게시판 전체 리스트
	public List<InquiryDTO>  allInquiryList(InquiryDTO inquiry);
	
	//문의게시판 글쓰기
   public void inquiryWrite(InquiryDTO inquiry);

}
