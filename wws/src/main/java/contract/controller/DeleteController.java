package contract.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import contract.model.ContractServiceImpl;

public class DeleteController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		int result = service.remove(idx);
		if(result!=0)System.out.println("삭제완료");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/contract/list.do");
		return mav;
	}
	ContractServiceImpl service;
	public void setService (ContractServiceImpl service){this.service = service;}
}
