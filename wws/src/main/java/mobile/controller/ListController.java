package mobile.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mobile.model.MobileBean;
import mobile.model.MobileServiceImpl;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class ListController implements Controller{
	MobileServiceImpl service;
	
	public void setService(MobileServiceImpl service) {
		this.service = service;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int pageNo = 1;
		int recordsPerPage = 20;
		if(request.getParameter("pageNo")!=null)pageNo = Integer.parseInt(request.getParameter("pageNo"));
		List<MobileBean> list = service.getList(pageNo, recordsPerPage);
		int noOfRecords = service.count();
		int noOfPages = (int) (Math.ceil(noOfRecords) * 1.0 / recordsPerPage);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("noOfPages", noOfPages);
		mav.addObject("currentPage",pageNo);
		mav.addObject("list", list);
		mav.setViewName("mobile/list");
		
		return mav;
	}

}
