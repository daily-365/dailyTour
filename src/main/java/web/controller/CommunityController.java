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

import web.dto.CommunityDTO;
import web.dto.MemberDTO;
import web.service.face.CommunityService;
import web.util.PageMaker;
import web.util.SearchCriteria;

@Controller
@RequestMapping(value = "/community/*")
public class CommunityController {

	@Autowired
	CommunityService service;
	
	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);
	
	@RequestMapping(value = "/list",method = RequestMethod.GET)
	public void getList(Model model,CommunityDTO community,@ModelAttribute("scri")SearchCriteria scri) {
		
		logger.info("get list");
		
//		List<CommunityDTO> list = service.AlllistCommunity(community);
//		model.addAttribute("list",list);
		
		List<CommunityDTO> list = service.listPage(scri);
		model.addAttribute("list",list);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.count());
		
	}
	
	
	
	@RequestMapping(value = "/list",method = RequestMethod.POST)
	public void postList() {
		
		
		
		logger.info("post list");	
			
	}
	

	
	@RequestMapping(value = "/write",method = RequestMethod.GET)
	public void getWrite() {
		
		logger.info("get write");	
		
	}
	
	
	
	@RequestMapping(value = "/write",method = RequestMethod.POST)
	public String postWrite(@ModelAttribute("member")MemberDTO member,CommunityDTO community ) {
		
		logger.info("post write");	
			
		service.writeCommunity(community);
		
		return "redirect:/community/list";
	}
	
	
	@RequestMapping(value = "/view",method = RequestMethod.GET)
	public void getView() {
		
		logger.info("get view");	
		
	}
	
	@RequestMapping(value = "/view",method = RequestMethod.POST)
	public void postView() {
		
		logger.info("post view");	
		
		
		
		
		
	}
}
