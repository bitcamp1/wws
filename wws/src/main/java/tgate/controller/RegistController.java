package tgate.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import tgate.model.TgateBean;
import tgate.model.TgateServiceImpl;

public class RegistController extends MultiActionController{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		TgateBean tgate = new TgateBean();
		bind(request, tgate);
		int result = service.regist(tgate);
		if(result<1)throw new Exception("TGATE 등록실패입니다");
		mav.setViewName("tgate/regist");
		return mav;
	}
	TgateServiceImpl service;
	public void setService(TgateServiceImpl service){this.service=service;}

}
