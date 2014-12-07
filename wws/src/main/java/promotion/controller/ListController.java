package promotion.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import promotion.model.PromotionBean;
import promotion.model.PromotionServiceImpl;

public class ListController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse arg1) throws Exception {
		int pageNo = 1;
		int recordsPerPage = 20;
		if(request.getParameter("pageNo")!=null)
			pageNo = Integer.parseInt(request.getParameter("pageNo"));
		
		List<PromotionBean> list = service.getList(pageNo, recordsPerPage);
		int noOfRecords = service.count();
		int noOfPages = (int)Math.ceil(noOfRecords * 1.0 / recordsPerPage);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("noOfPages", noOfPages);
		mav.addObject("currentPage", pageNo);
		
		mav.setViewName("promotion/list");
		return mav;
	}
	PromotionServiceImpl service;
	public void setService(PromotionServiceImpl service){this.service = service;}
}
