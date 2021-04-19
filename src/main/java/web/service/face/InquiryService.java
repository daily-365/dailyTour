package web.service.face;

import java.util.List;

import web.dto.InquiryDTO;

public interface InquiryService {

	//문의게시판 전체 리스트
	public List<InquiryDTO>  allInquiryList(InquiryDTO inquiry);
	
	//문의게시판 글쓰기
   public void inquiryWrite(InquiryDTO inquiry);
   
	//문의게시판 상세 조회
	public InquiryDTO inquiryView(InquiryDTO inquiry);

	//문의게시판 답글 하기 (관리자)
	public void inquiryComment(InquiryDTO inquiry);
	
	//문의게시판 수정
	public void inquiryModify(InquiryDTO inquiry);
	//문의게시판 삭제
	public void inquiryDelete(int inquiryNo);
}
