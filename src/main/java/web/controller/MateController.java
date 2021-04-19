package web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.dto.MateDTO;
import web.dto.MemberDTO;
import web.service.face.MateService;

@Controller
@RequestMapping(value = "/mate/*")
public class MateController {

	@Autowired
	MateService service;
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = "/list",method = RequestMethod.GET)
	public void getList() {
		logger.info("get list");
		
	}
	
	@RequestMapping(value = "/list",method = RequestMethod.POST)
	public void postList(@ModelAttribute("member")MemberDTO member) {
		logger.info("post list");
		
	}	
	
	
	@RequestMapping(value = "/regist",method = RequestMethod.GET)
	public void getRegist() {
		logger.info("get regist");
		
	}
	
	@RequestMapping(value = "/regist",method = RequestMethod.POST)
	public String postRegist(@ModelAttribute("member")MemberDTO member,MateDTO mate) {
		logger.info("post regist");
		
		service.registMate(mate);
		
		return "redirect:/mate/list";
		
	}	
}
