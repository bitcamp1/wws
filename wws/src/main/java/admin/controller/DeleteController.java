package admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import admin.model.AdminServiceImpl;

public class DeleteController implements Controller{
	AdminServiceImpl service;
	public void setService (AdminServiceImpl service){this.service = service;} 
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse arg1) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		int result = service.remove(idx);
		if(result!=0)System.out.println("삭제완료");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/list.do");
		return mav;
	}
	

}
