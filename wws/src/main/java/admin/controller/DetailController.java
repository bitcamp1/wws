package admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import admin.model.AdminBean;
import admin.model.AdminServiceImpl;

public class DetailController implements Controller{
	AdminServiceImpl service;
	public void setService (AdminServiceImpl service){this.service = service;}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse arg1) throws Exception {
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		
		AdminBean admin = service.retrieveByIdx(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("admin",admin);
		mav.setViewName("admin/detail");
		return mav;
	}

}
