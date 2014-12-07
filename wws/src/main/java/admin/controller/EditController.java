package admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import admin.model.AdminBean;
import admin.model.AdminServiceImpl;

public class EditController implements Controller{
	AdminServiceImpl service;
	public void setService(AdminServiceImpl service) {this.service = service;}

		


	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		AdminBean admin = service.retrieveByIdx(idx);
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		int auth = Integer.parseInt(request.getParameter("auth"));
		String pwd = request.getParameter("pwd");
		
		admin.setPhone(phone);
		admin.setEmail(email);
		admin.setAuth(auth);
		admin.setPwd(pwd);
		
		ModelAndView mav = new ModelAndView();
		
		
		int result = service.edit(admin);
		
		if(result==0){
			throw new Exception("수정실패");
		}
		
		mav.setViewName("redirect:/admin/detail.do?idx="+request.getParameter("idx"));
		return mav;
	}
	
}
