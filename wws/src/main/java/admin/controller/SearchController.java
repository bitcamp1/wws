package admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import admin.model.AdminBean;
import admin.model.AdminServiceImpl;

public class SearchController implements Controller{
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse arg1) throws Exception {
		String name = request.getParameter("name");
		List<AdminBean> list = new ArrayList<AdminBean>();
		if(name.equals(service.retrieveByName(name))){
			 list = service.retrieveByName(name);
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("admin/list"); // 검색결롸를 list 밑에 생성해서 보여준다.
		return null;
	}
	
	AdminServiceImpl service;
	public void setService(AdminServiceImpl service){this.service = service;}
}
