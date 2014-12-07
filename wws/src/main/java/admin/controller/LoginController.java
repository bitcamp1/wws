package admin.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import admin.model.AdminBean;
import admin.model.AdminService;


public class LoginController implements Controller{
	AdminService service;
	public void setService(AdminService service) {this.service = service;}
		
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		
		HashMap<String, String> paramMap = new HashMap<String, String>(); 
		paramMap.put("id", id);
		paramMap.put("pwd", pwd);
		HttpSession session = request.getSession();
		session.setAttribute("adminId", id);
		AdminBean admin = service.login(paramMap);
		
		if(admin != null){
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("name",admin.getName());
			mav.setViewName("/admin/main");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		String message = "로그인 실패입니다.";
		mav.addObject("message",message);
		mav.setViewName("redirect:/loginform.do");
		return mav;
		
	}

}
