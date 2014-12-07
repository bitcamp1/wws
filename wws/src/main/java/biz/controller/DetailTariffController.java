package biz.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import tgate.model.TgateBean;
import tgate.model.TgateServiceImpl;

public class DetailTariffController implements Controller{
	TgateServiceImpl service;

	public void setService(TgateServiceImpl service) {
		this.service = service;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String joinType = request.getParameter("joinType");
		String model = request.getParameter("model");
		String custId = request.getParameter("custId");
		String tffId = request.getParameter("tffId");
		System.out.println("tariff 파라미터:"+joinType);
		System.out.println("tariff 파라미터:"+model);
		System.out.println("tariff 파라미터:"+custId);
		System.out.println("tariff 파라미터:"+tffId);
		
		HashMap<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("joinType", joinType);
		paramMap.put("model", model);
		paramMap.put("tffId", tffId);
		paramMap.put("custId", custId);
		TgateBean tgate = service.retrieveByTffId(paramMap);
	
		
		System.out.println("tgate"+tgate);
		ModelAndView mav = new ModelAndView();
		mav.addObject("tgate", tgate);
		mav.setViewName("biz/detail_jointype");
		
		return mav;
	}

}
