package guest.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import guest.model.GuestBean;
import guest.model.GuestServiceImpl;

public class DetailController implements Controller{
	private GuestServiceImpl service;
	
	public void setService(GuestServiceImpl service) {
		this.service = service;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int idx=Integer.parseInt(request.getParameter("idx"));
		System.out.println("guest인덱스:"+idx);
		GuestBean guest=service.retrieveByIdx(idx);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("guest", guest);
		mav.setViewName("guest/detail");
		
		return mav;
	}
	
	

}
