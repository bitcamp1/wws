package tgate.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import tgate.model.TgateServiceImpl;

public class DeleteController implements Controller{
	TgateServiceImpl service;

	public void setService(TgateServiceImpl service) {
		this.service = service;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		int result = service.remove(idx);
		if(result!=0)System.out.println("TGATE삭제완료");
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/tgate/list.do");
		
		return mav;
	}
	
}
