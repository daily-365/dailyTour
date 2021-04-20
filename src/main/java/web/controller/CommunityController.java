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
import org.springframework.web.bind.annotation.RequestParam;

import web.dto.CommunityDTO;
import web.dto.CommunityReplyDTO;
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
	public void getView(@RequestParam(name = "communityNo",required = false)int communityNo,CommunityDTO community,Model model) {
		
		logger.info("get view");	

	  CommunityDTO comm  = service.selectByCommunityNO(community);
	  model.addAttribute("comm",comm);
	  
	  
		service.visitCount(communityNo);
		
		
	}
	
	@RequestMapping(value = "/view",method = RequestMethod.POST)
	public String postView(@ModelAttribute("member")MemberDTO member,CommunityDTO community) {
		
		logger.info("post view");	
		
		service.modifyCommunity(community);
		
	    return "redirect:/community/list";		
	}
	
	
	@RequestMapping(value = "/reply",method = {RequestMethod.GET})
	public void getReply(Model model,CommunityReplyDTO commReply,CommunityDTO community) {
		
		logger.info("get reply");	
		
		List<CommunityReplyDTO> commRe = service.listAllReply(commReply);
		
		model.addAttribute("commRe",commRe);
		
	   CommunityDTO comm = service.communityReply(community);
	   model.addAttribute("comm",comm);
			
	
	}
	
	
	@RequestMapping(value = "/reply",method = RequestMethod.POST)
	public String postReply(@ModelAttribute("member")MemberDTO member,CommunityReplyDTO commReply) {
		
		logger.info("post reply");	
		
		 service.writeReply(commReply);
		
		return "redirect:/community/reply";
	}
	
	
	
	@RequestMapping(value = "/delete",method = RequestMethod.GET)
	public String deleteCommunity(@RequestParam(name = "communityNo",required = false)int communityNo) {
		
		logger.info("get deleteCommunity");
		
		service.deleteCommunity(communityNo);
		
		return "redirect:/community/list";
		
	}
	
	
}
