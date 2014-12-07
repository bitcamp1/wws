package admin.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import admin.model.AdminBean;
import admin.model.AdminServiceImpl;



public class ListController implements Controller{
	private AdminServiceImpl service;
	public void setService(AdminServiceImpl service) {this.service = service;}
		
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,HttpServletResponse response) throws Exception {
		int pageNo = 1;
		int recordsPerPage = 20;
		if(request.getParameter("pageNo") != null)
		 pageNo = Integer.parseInt(request.getParameter("pageNo"));
		
		List<AdminBean> list = service.getList(pageNo, recordsPerPage);
		int noOfRecords = service.count();
		int noOfPages = (int)Math.ceil(noOfRecords * 1.0 / recordsPerPage);
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("noOfPages", noOfPages);
		mav.addObject("currentPage",pageNo);
		
		mav.setViewName("admin/list");
		return mav;
		
	}
}
