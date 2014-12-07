package contract.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import contract.model.ContractBean;
import contract.model.ContractServiceImpl;

public class DetailController implements Controller {
	ContractServiceImpl service;
	public void setService(ContractServiceImpl service) {
		this.service = service;
	}
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		System.out.println("ctr값"+idx);
		ContractBean contract = service.retrieveByIdx(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("contract", contract);
		mav.setViewName("contract/detail");
		
		return mav;
	}

}
