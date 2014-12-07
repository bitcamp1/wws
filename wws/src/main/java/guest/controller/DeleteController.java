package guest.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import guest.model.GuestServiceImpl;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class DeleteController implements Controller{
	GuestServiceImpl service;

	public void setService(GuestServiceImpl service) {
		this.service = service;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int idx=Integer.parseInt(request.getParameter("idx"));
		System.out.println("삭제번호:"+idx);
		int result=service.remove(idx);
		if(result!=0)System.out.println("고객..삭제완료");
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/guest/list.do");
		
		return mav;
	}
	
}
