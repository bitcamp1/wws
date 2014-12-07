package promotion.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import promotion.model.PromotionBean;
import promotion.model.PromotionServiceImpl;

public class RegistController extends MultiActionController{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse arg1) throws Exception {
		ModelAndView mav = new ModelAndView();
		PromotionBean promotion = new PromotionBean();
		bind(request, promotion);
		int result = service.regist(promotion);
		if(result<1)throw new Exception("프로모션 등록실패입니다");
		mav.setViewName("promotion/regist");
		return mav;
	}
	PromotionServiceImpl service;
	public void setService(PromotionServiceImpl service){this.service = service;}
}
