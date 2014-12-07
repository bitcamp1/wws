package guest.controller;

import guest.model.GuestBean;
import guest.model.GuestServiceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;



public class SearchController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse arg1) throws Exception {
		String name = request.getParameter("name");
		List<GuestBean> list = new ArrayList<GuestBean>();
		if(name.equals(service.retrieveByName(name))){
			 list = service.retrieveByName(name);
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("guest/list"); // 검색결롸를 list 밑에 생성해서 보여준다.
		return null;
	}
	
	GuestServiceImpl service;
	public void setService(GuestServiceImpl service){this.service = service;}
}
