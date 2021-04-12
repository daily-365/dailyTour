package web.controller;

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
import web.service.face.BoardService;
import web.util.PageMaker;
import web.util.SearchCriteria;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/board/*")
public class BoardController {

	@Autowired
	private BoardService service;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
    
	@RequestMapping(value = "/list" )
	public void listPage(@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
	 logger.info("list page");
	 
	 List<BoardDTO> list = service.listPage(scri);
	 model.addAttribute("list", list);
	 
	 PageMaker pageMaker = new PageMaker();
	 pageMaker.setCri(scri);
	 pageMaker.setTotalCount(service.listCount());
	 model.addAttribute("pageMaker", pageMaker);
	 
	 
	}
	


	
	@RequestMapping(value = "/write" , method = RequestMethod.GET)
	public void getWrite() {
		
		logger.info("get write");
		
	}
	@RequestMapping(value = "/write" , method = RequestMethod.POST)
	public String postWrite(BoardDTO board) {
		
		logger.info("post write");
		service.writeBoardService(board);
		
		return "redirect:/board/list";
		
		
	}

	@RequestMapping(value = "/view" )
	public void postView(MemberDTO member,BoardDTO board,Model model,HttpServletRequest req
//			,@RequestParam("boardNo")int boardNo) 
	      ){
		
		logger.info("post view");

	   
		  List<BoardDTO> list= service.listBoardService();
		  model.addAttribute("list",list);
		  
		
	
	      
		  
	}
	@RequestMapping(value = "/modify" , method = RequestMethod.GET)
	public void getModify(Model model,BoardDTO board) {
		
		logger.info("get Modify");
	
	 

	}
	@RequestMapping(value = "/modify" , method = RequestMethod.POST)
	public String postModify() {
		
		logger.info("post Modify");
		
		 service.updateBoardService();
		  
			return "redirect:/board/view";	
	}
	
	
	@RequestMapping(value = "/delete" , method = RequestMethod.GET)
	public void getDelete() {
		
		logger.info("get Delete");
		service.deleteBoardService();
		
		
		
	}
}
