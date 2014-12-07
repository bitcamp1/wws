package mobile.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mobile.model.MobileBean;
import mobile.model.MobileServiceImpl;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class DetailController implements Controller{
	MobileServiceImpl service;
	public void setService(MobileServiceImpl service) {this.service = service;}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		MobileBean mobile = service.retrieveByIdx(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("mobile", mobile);
		mav.setViewName("mobile/detail");
		return mav;
	}

}
