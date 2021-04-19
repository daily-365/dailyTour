package web.controller;

import java.io.File;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import web.dto.MemberDTO;
import web.service.face.MyPageService;
import web.util.UploadFileUtils;

@Controller
@RequestMapping(value = "/myPage/*")
public class MyPageController {

	@Autowired
    MyPageService service;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	public static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
	
	@RequestMapping(value = "/info",method = RequestMethod.GET)
	public void getInfo() {
		
		logger.info("get my info");
	}
	
	@RequestMapping(value = "/info",method =RequestMethod.POST )
	public void postInfo(@ModelAttribute("member")MemberDTO member) {
		
		logger.info("post my info");
	}
	
	
	
	@RequestMapping(value = "/detailInfo",method = RequestMethod.GET)
	public void getDetailInfo(MemberDTO member,Model model) {
		
		logger.info("get my detailInfo");

		
	}
	
	@RequestMapping(value = "/detailInfo",method =RequestMethod.POST )
	public String postDetailInfo(@ModelAttribute("member")MemberDTO member,MultipartFile file)throws Exception {
		
		logger.info("post my detailInfo");
		
		 String imgUploadPath = uploadPath + File.separator + "imgUpload";  // 이미지를 업로드할 폴더를 설정 = /uploadPath/imgUpload
		 String ymdPath = UploadFileUtils.calcPath(imgUploadPath);  // 위의 폴더를 기준으로 연월일 폴더를 생성
		 String fileName = null;  // 기본 경로와 별개로 작성되는 경로 + 파일이름
		   
		 if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
		  // 파일 인풋박스에 첨부된 파일이 없다면(=첨부된 파일이 이름이 없다면)
		  
		  fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);

		  // gdsImg에 원본 파일 경로 + 파일명 저장
		  member.setProfileImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		  // gdsThumbImg에 썸네일 파일 경로 + 썸네일 파일명 저장
		  member.setProfileThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		  
		 } else {  // 첨부된 파일이 없으면
		  fileName = File.separator + "images" + File.separator + "none.png";
		  // 미리 준비된 none.png파일을 대신 출력함
		 
		  member.setProfileImg(fileName);
		  member.setProfileThumbImg(fileName);
		  
		 }
		service.modifyMemberInfo(member);
		
		return "redirect:/myPage/info";
		
	}
	

	
	
	
}
