package web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.dto.MemberDTO;
import web.service.face.MemberService;

@Controller
@RequestMapping(value = "/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
    
	@Autowired
	MemberService service;
	
	@RequestMapping(value ="/join" , method = RequestMethod.GET)
	public void getJoin() {
		
		logger.info("get join");
		
	}
	
	@RequestMapping(value ="/join" , method = RequestMethod.POST)
	public String postJoin(MemberDTO member,HttpServletRequest req ,Model model) {
		
		logger.info("post join");
		boolean result =service.joinService(member);
		
		if(result) {
			
		    String userId = (String)req.getAttribute("userId");
		    model.addAttribute("userId",userId);
			
			
			return "redirect:/member/login";
			
		}else {
			
			return "redirect:/member/join";
		}
		
	}
	
	@RequestMapping(value ="/login" , method = RequestMethod.GET)
	public void getLogin() {
		
		logger.info("get login");
	}
	
	@RequestMapping(value ="/login" , method = RequestMethod.POST)
	public String postLogin(MemberDTO member,HttpSession session,HttpServletRequest req , Model model) {
		
		logger.info("post login");
		
		boolean result = service.loginService(member);
		
		if(result) {
			
		   session =req.getSession(); 
		   session.setAttribute("userId", member.getUserId());
		   session.setAttribute("login",true);
		       
	   
		   
			return "redirect:/";
			
		}else {
	
			
			return "redirect:/member/login";
		}
	}
	
	@RequestMapping(value ="/logout" , method = RequestMethod.GET)
	public void getLogout() {
		
		logger.info("get logout");
		
	}
	
}
