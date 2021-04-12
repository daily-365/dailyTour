package web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/community/*")
public class CommunityController {

	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);
	
	@RequestMapping(value = "/list",method = RequestMethod.GET)
	public void getList() {
		
		logger.info("get list");	
		
	
	
	}
	
	
	
	@RequestMapping(value = "/list",method = RequestMethod.POST)
	public void postList() {
		
		logger.info("post list");	
		
	
	
	
	}
	
	
	
}
