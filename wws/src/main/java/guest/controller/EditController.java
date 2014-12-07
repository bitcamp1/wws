package guest.controller;

import guest.model.GuestBean;
import guest.model.GuestServiceImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class EditController implements Controller{
	
	GuestServiceImpl service;
	public void setService(GuestServiceImpl service){this.service=service;}
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		GuestBean guest = service.retrieveByIdx(idx);
		String phone = request.getParameter("phone");
		String info = request.getParameter("info");
		String provide = request.getParameter("provide");
		
		guest.setPhone(phone);
		guest.setInfo(info);
		guest.setProvide(provide);
		
		ModelAndView mav = new ModelAndView();
		
		
		int result = service.edit(guest);
		
		if(result==0){
			throw new Exception("수정실패");
		}
		
		mav.setViewName("redirect:/guest/detail.do?idx="+request.getParameter("idx"));
		return mav;
	}
	
}
