package biz.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import tgate.model.TgateBean;
import tgate.model.TgateServiceImpl;

public class DetailModelController implements Controller{
	TgateServiceImpl service;

	public void setService(TgateServiceImpl service) {
		this.service = service;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String model = request.getParameter("model");
		String joinType = request.getParameter("joinType");
		String tffId = null;
		String nullChk = request.getParameter("tffId");
		if(nullChk == null){
			System.out.println("여기는 model컨트롤러%%tffId가 null이어서..lte69담자");
			tffId = "lte69";
		}else{
			tffId = nullChk;
		}
		String custId = request.getParameter("custId");
		System.out.println("모델_컨트롤러에서 보내는 값 : model :"+model);
		System.out.println("모델_컨트롤러에서 보내는 값 : joinType :"+joinType);
		System.out.println("모델_컨트롤러에서 보내는 값 : tffId 디폴트는 lte69:"+tffId);
		System.out.println("모델_컨트롤러에서 보내는 값:custId:"+custId);
		HashMap<String,String> paramMap = new HashMap<String, String>();
		
		paramMap.put("model", model);
		paramMap.put("joinType", joinType);
		paramMap.put("tffId", tffId);
		paramMap.put("custId",custId);
		
		TgateBean tgate = service.retrieveByModel(paramMap);
		ModelAndView mav = new ModelAndView();
		System.out.println("모델_컨트롤러에서 받능 값:"+tgate);
		if(tgate==null){
			response.sendRedirect("biz/detail_jointype");
		}
		
		mav.addObject("tgate",tgate);
		mav.setViewName("biz/detail_jointype");
		return mav;
	}
	
	
}
