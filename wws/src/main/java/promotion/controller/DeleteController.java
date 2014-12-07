package promotion.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import promotion.model.PromotionServiceImpl;

public class DeleteController implements Controller{
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse arg1) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		int result = service.remove(idx);
		if(result != 0)System.out.println("Promotion삭제완료");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/promotion/list.do");
		return mav;
	}
	
	PromotionServiceImpl service;
	public void setService(PromotionServiceImpl service){this.service = service;}

}
