package admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import admin.model.AdminBean;
import admin.model.AdminService;

public class RegistController extends MultiActionController{
	
	public ModelAndView regist(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		AdminBean admin = new AdminBean();
		bind(request,admin);
		int result = service.regist(admin);
		if(result <1 ){
			throw new Exception("관리자 등록실페입니다");
		}
		mav.setViewName("admin/regist");
		return mav;
	}
	
	AdminService service;
	public void setService(AdminService service){this.service = service;}

}
