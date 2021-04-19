package web.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import web.dto.MemberDTO;
import web.service.face.AdminService;
import web.util.PageMaker;
import web.util.SearchCriteria;

@Controller
@RequestMapping(value = "/admin/*")
public class AdminController {

	@Autowired
	AdminService service;
	
	private static final Logger logger= LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value = "/index")
	public String adminMain() {
		
		logger.info("Admin Main");
		
		return "admin/index";
	
	}
	
	@RequestMapping(value = "/member/list")
	public void allList(Model model,
			        @ModelAttribute("scri")SearchCriteria scri) {
		
		logger.info("Member All list");
		

		
		List<MemberDTO> list =service.listMemberPage(scri);
		model.addAttribute("list",list);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listMemberCount());
	    model.addAttribute("pageMaker",pageMaker);
		
	}
	
	
	


	
}
