package web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import web.dto.BoardDTO;
import web.dto.MemberDTO;
import web.service.face.BoardService;
import web.util.PageMaker;
import web.util.SearchCriteria;

import java.util.List;


@Controller
@RequestMapping(value = "/board/*")
public class BoardController {

	@Autowired
	private BoardService service;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
    
	@RequestMapping(value = "/list" ,method = {RequestMethod.GET, RequestMethod.POST})
	public void listPage(@ModelAttribute("member")MemberDTO member, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
	 logger.info("list page");
	 
	 List<BoardDTO> list = service.listPage(scri);
	 model.addAttribute("list", list);
	 
	 PageMaker pageMaker = new PageMaker();
	 pageMaker.setCri(scri);
	 pageMaker.setTotalCount(service.listCount());
	 model.addAttribute("pageMaker", pageMaker);
	 
	 
	 
	}
	
	@RequestMapping(value = "/view",method = RequestMethod.GET)
	public void getView(Model model) { logger.info("get view"); 
	
    List<BoardDTO> board = service.listBoardService();
    model.addAttribute("board",board);
	}
	
	
	@RequestMapping(value = "/view",method = RequestMethod.POST )
	public void postView(Model model){
		
		logger.info("post view");
   
       
		  
	}
	



}
