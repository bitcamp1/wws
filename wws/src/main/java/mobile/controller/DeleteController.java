package mobile.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mobile.model.MobileServiceImpl;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class DeleteController implements Controller{
	MobileServiceImpl service;
	
	public void setService(MobileServiceImpl service) {
		this.service = service;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int idx=Integer.parseInt(request.getParameter("idx"));
		int result=service.remove(idx);
		if(result!=0)System.out.println("삭제완료");
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/mobile/list.do");
		
		return mav;
	}

}
