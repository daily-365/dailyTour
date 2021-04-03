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


import net.sf.json.JSONArray;
import web.dto.BoardDTO;
import web.dto.MemberDTO;
import web.service.face.BoardService;
import java.util.List;

@Controller
@RequestMapping(value = "/board/*")
public class BoardController {

	@Autowired
	private BoardService service;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	
	
    
	@RequestMapping(value = "/list" ,method = RequestMethod.GET)
	public void getList(HttpSession session,MemberDTO member,Model model,BoardDTO board,HttpServletRequest req) {
		
		logger.info("get list");
		   
		List<BoardDTO> list = null;
		list = service.searchBoardService(board);
		
		model.addAttribute("list",JSONArray.fromObject(list));	   
	    
		 session.setAttribute("userId",member.getUserId());
			
	}
	

	@RequestMapping(value = "/list" ,method = RequestMethod.POST)
	public void postList(HttpSession session,MemberDTO member,Model model,BoardDTO board) {
		
		logger.info("post list");

	
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
	public void postView(HttpSession session,MemberDTO member,BoardDTO board,Model model) {
		
		logger.info("post view");
//		   session.setAttribute("verify",member.getVerify());
	   
		  List<BoardDTO> list= service.listBoardService();
		  model.addAttribute("list",list);
		
	}
	@RequestMapping(value = "/modify" , method = RequestMethod.GET)
	public void getModify() {
		
		logger.info("get Modify");
		
		
		
	}
	@RequestMapping(value = "/modify" , method = RequestMethod.POST)
	public String postModify() {
		
		logger.info("post Modify");
		 service.updateBoardService();
		
		 return "redirect:/board/list";
		
	}
	
	
	@RequestMapping(value = "/delete" , method = RequestMethod.GET)
	public void getDelete() {
		
		logger.info("get Delete");
		service.deleteBoardService();
		
		
		
	}
}
