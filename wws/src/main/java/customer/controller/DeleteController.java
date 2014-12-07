package customer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import customer.model.CustomerServiceImpl;

public class DeleteController implements Controller{
	CustomerServiceImpl service;
	
	public void setService(CustomerServiceImpl service) {
		this.service = service;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int idx=Integer.parseInt(request.getParameter("idx"));
		int result = service.remove(idx);
		if(result!=0)System.out.println("삭제완료");
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/customer/list.do");
		
		return mav;
	}
	
}
