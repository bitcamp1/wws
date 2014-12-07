package customer.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import customer.model.CustomerBean;
import customer.model.CustomerServiceImpl;

public class ListController implements Controller{
	CustomerServiceImpl service;
	public void setService(CustomerServiceImpl service) {this.service = service;}
		
	

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int pageNo = 1;
		int recordsPerPage = 20;
		if(request.getParameter("pageNo")!=null)
			pageNo = Integer.parseInt(request.getParameter("pageNo"));
		List<CustomerBean> list = service.getList(pageNo, recordsPerPage);
		int noOfRecords = service.count();
		int noOfPages = (int)Math.ceil(noOfRecords * 1.0 / recordsPerPage);
		
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.addObject("noOfPages",noOfPages);
		mav.addObject("currentPage", pageNo);
		mav.setViewName("customer/list");
		
		return mav;
	}

}
