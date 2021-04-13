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

import web.dto.BoardDTO;
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
	
	
	

	@RequestMapping(value = "/board/list" ,method = {RequestMethod.GET, RequestMethod.POST})
	public void listPage(@ModelAttribute("member")MemberDTO member, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
	 logger.info("list page");
	 
	 List<BoardDTO> list = service.listBoardPage(scri);
	 model.addAttribute("list", list);
	 
	 PageMaker pageMaker = new PageMaker();
	 pageMaker.setCri(scri);
	 pageMaker.setTotalCount(service.listBoardCount());
	 model.addAttribute("pageMaker", pageMaker);
	 
	 
	 
	}
	
	@RequestMapping(value = "/board/view",method = RequestMethod.GET)
	public void getView(Model model) { logger.info("get view"); 
	
    List<BoardDTO> board = service.listBoardService();
    model.addAttribute("board",board);
	}
	
	
	@RequestMapping(value = "/board/view",method = RequestMethod.POST )
	public void postView(Model model){
		
		logger.info("post view");
   
       
		  
	}
	
	
	@RequestMapping(value = "/board/write" , method = RequestMethod.GET)
	public void getWrite() {
		
		logger.info("get write");
			
		
	}
	
	
	
	@RequestMapping(value = "/board/write" , method = RequestMethod.POST)
	public String postWrite(@ModelAttribute("member") MemberDTO member,BoardDTO board) {
		
		logger.info("post write");
		  
            
		service.writeBoardService(board);
		
		return "redirect:/admin/board/list";
		
		
	}

	


	@RequestMapping(value = "/board/modify" )
	public void modifyBoard(Model model,BoardDTO board) {
		
		logger.info("Modify");
	
		   
		  service.updateBoardService(board);
		
	}
	
	
	@RequestMapping(value = "/board/delete" )
	public void deleteBoard(@RequestParam(value = "boardNo" ,required=false)int boardNo ) {
		
		logger.info("get Delete");
		service.deleteBoardService(boardNo);
		
		
		
	}

	
}
