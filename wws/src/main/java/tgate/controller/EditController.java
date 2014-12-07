package tgate.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import tgate.model.TgateBean;
import tgate.model.TgateServiceImpl;

public class EditController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		TgateBean tgate = service.retrieveByIdx(idx);
		
		String tgUrl= request.getParameter("tgUrl");
		tgate.setTgUrl(tgUrl);
		
		ModelAndView mav = new ModelAndView();
		
		
		int result = service.edit(tgate);
		
		if(result==0){
			throw new Exception("수정실패");
		}
		
		mav.setViewName("redirect:/tgate/detail.do?idx="+request.getParameter("idx"));
		return mav;
	}
	TgateServiceImpl service;
	public void setService(TgateServiceImpl service){this.service=service;}
}
