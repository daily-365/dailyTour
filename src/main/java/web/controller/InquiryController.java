package web.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.dto.InquiryDTO;
import web.dto.MemberDTO;
import web.service.face.InquiryService;

@Controller
@RequestMapping(value = "/inquiry/*")
public class InquiryController {
	
	@Autowired
	InquiryService service;
	
	private static final Logger logger = LoggerFactory.getLogger(InquiryController.class);
	
	@RequestMapping(value = "/list",method = RequestMethod.GET)
	public void getInquiryList(Model model,InquiryDTO inquiry) {
		
		logger.info("get requiry list");
	 List<InquiryDTO> list= service.allInquiryList(inquiry);
	 model.addAttribute("list",list);
	 
	}	
	
	@RequestMapping(value = "/list",method = RequestMethod.POST)
	public String postInquiryList(@ModelAttribute("member")MemberDTO member ,InquiryDTO inquiry) {
		
		logger.info("post requiry list");
      
		service.inquiryWrite(inquiry);
	   
		return "redirect:/inquiry/list";
		
	}


}
