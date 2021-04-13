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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String postJoin(MemberDTO member,HttpSession session ,Model model) {
		
		logger.info("post join");
		boolean  join=service.joinService(member);
		
		if(join) {
			
				 			
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
	public String postLogin(MemberDTO member,HttpSession session, Model model,RedirectAttributes rttr,HttpServletRequest req) {
		
		logger.info("post login");
		
		
		
     MemberDTO login = service.loginService(member);
		   
	     	     
		if(login!=null ) {
					   
		   session.setAttribute("member",login);
            
           
 
			return "redirect:/";
			
		}else {
			session.setAttribute("member", null);
	        rttr.addFlashAttribute("msg",false);
			
			return "redirect:/member/login";
		}
	}
	
	@RequestMapping(value ="/logout" , method = RequestMethod.GET)
	public void getLogout() {
		
		logger.info("get logout");
		
	}
	
}
