package customer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import customer.model.CustomerBean;
import customer.model.CustomerServiceImpl;

public class DetailController implements Controller{
	CustomerServiceImpl service;
	
	public void setService(CustomerServiceImpl service) {
		this.service = service;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int idx=Integer.parseInt(request.getParameter("idx"));
		System.out.println("idx의 값 : "+idx);
		CustomerBean customer = service.retrieveByIdx(idx);
		int custIdx = customer.getCustIdx();
		System.out.println(custIdx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("customer", customer);
		mav.setViewName("customer/detail");
		
		return mav;
	}

}
