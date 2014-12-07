package promotion.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import promotion.model.PromotionBean;
import promotion.model.PromotionServiceImpl;

public class EditController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse arg1) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		PromotionBean promotion = service.retrieveByIdx(idx);
		String title = request.getParameter("title");
		String goods = request.getParameter("goods");
		String message = request.getParameter("message");
		
		promotion.setTitle(title);
		promotion.setGoods(goods);
		promotion.setMessage(message);
		
		ModelAndView mav = new ModelAndView();
		
		
		int result = service.edit(promotion);
		
		if(result==0){
			throw new Exception("수정실패");
		}
		
		mav.setViewName("redirect:/promotion/detail.do?idx="+request.getParameter("idx"));
		return mav;
	}
	
	PromotionServiceImpl service;
	public void setService(PromotionServiceImpl service) {
		this.service = service;
	}

}
