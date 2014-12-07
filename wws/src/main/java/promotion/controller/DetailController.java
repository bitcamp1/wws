package promotion.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import promotion.model.PromotionBean;
import promotion.model.PromotionService;
import promotion.model.PromotionServiceImpl;

public class DetailController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse arg1) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		PromotionBean promotion = service.retrieveByIdx(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("promotion", promotion);
		mav.setViewName("promotion/detail");
		return mav;
	}
	PromotionService service;
	public void setService(PromotionServiceImpl service){this.service = service;}
}
