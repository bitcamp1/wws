package guest.controller;

import guest.model.GuestBean;
import guest.model.GuestServiceImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;


public class RegistController extends MultiActionController{
	GuestServiceImpl service;
	
	public void setService(GuestServiceImpl service) {
		this.service = service;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		GuestBean guest = new GuestBean();
		bind(request, guest);
		int result = service.regist(guest);
		if(result<1)throw new Exception("고객등록에 실패했습니다");
		mav.setViewName("guest/regist");
		
		return mav;
	}

}
