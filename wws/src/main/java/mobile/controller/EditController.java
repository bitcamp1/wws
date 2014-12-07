package mobile.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mobile.model.MobileBean;
import mobile.model.MobileServiceImpl;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;


public class EditController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		MobileBean mobile = service.retrieveByIdx(idx);
		
		int price=Integer.parseInt(request.getParameter("price"));
		mobile.setMbPrice(price);
		
		ModelAndView mav = new ModelAndView();
		
		
		int result = service.edit(mobile);
		
		if(result==0){
			throw new Exception("수정실패");
		}
		
		mav.setViewName("redirect:/mobile/detail.do?idx="+request.getParameter("idx"));
		return mav;
		
	}
	MobileServiceImpl service;
	public void setService(MobileServiceImpl service){this.service = service;}

}
