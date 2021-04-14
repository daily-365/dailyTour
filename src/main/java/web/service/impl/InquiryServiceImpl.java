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
	
}
