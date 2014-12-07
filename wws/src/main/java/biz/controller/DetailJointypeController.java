package biz.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import tgate.model.TgateBean;
import tgate.model.TgateServiceImpl;

public class DetailJointypeController implements Controller{
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
		
		System.out.println("jointype 파라미터????:"+joinType);
		System.out.println("jointype 파라미터:"+model);
		System.out.println("jointype 파라미터:"+custId);
		System.out.println("jointype 파라미터:"+tffId);
		HashMap<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("joinType", joinType);
		paramMap.put("model", model);
		paramMap.put("custId", custId);
		paramMap.put("tffId", tffId);
		TgateBean tgate = service.retrieveByJoinType(paramMap);
	
		
		System.out.println("jointype에서 받은 tgate"+tgate);
		ModelAndView mav = new ModelAndView();
		mav.addObject("tgate", tgate);
		mav.setViewName("biz/detail_jointype");
		
		return mav;
	}

}
