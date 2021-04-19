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


@Controller
@RequestMapping(value = "/board/*")
public class BoardController {

	@Autowired
	private BoardService service;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	
	@RequestMapping(value = "/list" ,method = RequestMethod.GET)
    public void getListPage(@ModelAttribute("scri") SearchCriteria scri, Model model) {
		
		logger.info("get list page");
    
	
	 List<BoardDTO> list = service.listBoardPage(scri);
	 model.addAttribute("list", list);
	 PageMaker pageMaker = new PageMaker();
	 pageMaker.setCri(scri);
	 pageMaker.setTotalCount(service.listBoardCount());
	 model.addAttribute("pageMaker", pageMaker);
	 
	}

	@RequestMapping(value = "/list" ,method = RequestMethod.POST)
	public void postListPage(@ModelAttribute("member")MemberDTO member) throws Exception {
	 logger.info("post list page");
	 
      
	 
	}
	
	@RequestMapping(value = "/view",method = RequestMethod.GET)
	public void getView(@ModelAttribute("scri") SearchCriteria scri,Model model) { logger.info("get view"); 
	
    List<BoardDTO> board = service.listBoardPage(scri);
    model.addAttribute("board", board);
    
	 PageMaker pageMaker = new PageMaker();
	 pageMaker.setCri(scri);
	 pageMaker.setTotalCount(service.listBoardCount());
	 model.addAttribute("pageMaker", pageMaker);
	 
	}
	
	
	@RequestMapping(value = "/view",method = RequestMethod.POST )
	public void postView(Model model,@ModelAttribute("member")MemberDTO members){
		
		logger.info("post view");
   
       
		  
	}
	
	
	@RequestMapping(value = "/write" , method = RequestMethod.GET)
	public void getWrite() {
		
		logger.info("get write");
			
		
	}
	
	
	
	@RequestMapping(value = "/write" , method = RequestMethod.POST)
	public String postWrite(@ModelAttribute("member") MemberDTO member,BoardDTO board) {
		
		logger.info("post write");
		  
            
		service.writeBoardService(board);
		
		return "redirect:/board/list";
		
		
	}

	@RequestMapping(value = "/modify" ,method = RequestMethod.GET)
	public void getModifyBoard(Model model,BoardDTO board) {
    logger.info("get modify");
	 
    service.updateBoardService(board);
	
    
	}


	
	@RequestMapping(value = "/delete",method = RequestMethod.GET )
	public void deleteBoard(@RequestParam(value = "boardNo" ,required=false)int boardNo ) {
		
		logger.info("get Delete");
		service.deleteBoardService(boardNo);
		
		
		
	}



}
