package web.interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import web.dto.MemberDTO;

public class AdminInterceptor  extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException
     
	{
		HttpSession session =request.getSession();
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		
		
		if(member==null) {
			
			response.sendRedirect("/member/login");
			return false;
		}
	
	   if(member.getVerify()!=1) {
		   
		   
		   response.sendRedirect("/");
		   return false;
	   }
	   
	   return true;
	}
	
	
}
