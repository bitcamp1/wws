package tariff.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import tariff.model.TariffServiceImpl;

public class DeleteController implements Controller{
	private TariffServiceImpl service;

	public void setService(TariffServiceImpl service) {
		this.service = service;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int idx=Integer.parseInt(request.getParameter("idx"));
		
		int result=service.remove(idx);
		if(result!=0)System.out.println("Tariff삭제완료");
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/tariff/list.do");
		
		return mav;
	}
	
}
