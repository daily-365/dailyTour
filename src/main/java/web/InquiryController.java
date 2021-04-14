package web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/inquiry/*")
public class InquiryController {

	private static final Logger logger = LoggerFactory.getLogger(InquiryController.class);
	
	@RequestMapping(value = "/list",method = RequestMethod.GET)
	public void getInquiryList() {
		logger.info("get inquiry list");
		
	}

	@RequestMapping(value = "/list",method = RequestMethod.POST)
	public void postInquiryList() {
		logger.info("post inquiry list");
		
		
		
	}
	
}
