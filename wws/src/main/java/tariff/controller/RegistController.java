package tariff.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import tariff.model.TariffBean;
import tariff.model.TariffServiceImpl;


public class RegistController extends MultiActionController{
	
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		TariffBean tariff = new TariffBean();
		bind(request, tariff);
		int result = service.regist(tariff);
		if(result <1){
			throw new Exception("요금제 등록 실패입니다");
		}
		mav.setViewName("tariff/regist");
		return mav;
	}
	TariffServiceImpl service;
	public void setService(TariffServiceImpl service){this.service=service;}
	
}
