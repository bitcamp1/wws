package tariff.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import tariff.model.TariffBean;
import tariff.model.TariffServiceImpl;

public class DetailController implements Controller{
	private TariffServiceImpl service;

	public void setService(TariffServiceImpl service) {
		this.service = service;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int idx=Integer.parseInt(request.getParameter("idx"));
		TariffBean tariff=service.retrieveByIdx(idx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("tariff", tariff);
		mav.setViewName("tariff/detail");		
		
		return mav;
	}
	
}
