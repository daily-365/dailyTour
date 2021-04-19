package web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.InqueryDAO;
import web.dto.InquiryDTO;
import web.service.face.InquiryService;

@Service
public class InquiryServiceImpl implements InquiryService {

	@Autowired
	InqueryDAO dao;

	@Override
	public List<InquiryDTO> allInquiryList(InquiryDTO inquiry) {
		
		return dao.allinquiryList(inquiry);
	}

	@Override
	public void inquiryWrite(InquiryDTO inquiry) {
	   
		dao.inquiryWrite(inquiry);
		
	}

	@Override
	public InquiryDTO inquiryView(InquiryDTO inquiry) {
		
		return dao.inquiryView(inquiry);
	}

	@Override
	public void inquiryComment(InquiryDTO inquiry) {
		dao.inquiryComment(inquiry);
		
	}

	@Override
	public void inquiryModify(InquiryDTO inquiry) {
	
		 dao.inquiryModify(inquiry);
		
	}

	@Override
	public void inquiryDelete(int inquiryNo) {
		
		dao.inquiryDelete(inquiryNo);
		
	}
	
}
