package contract.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import contract.model.ContractBean;
import contract.model.ContractServiceImpl;

public class RegistController extends MultiActionController{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		ContractBean contract = new ContractBean();
		bind(request, contract);
		int result = service.regist(contract);
		if(result <1)throw new Exception("계약서 등록 실패입니다.");
		mav.setViewName("contract/registform");
		return mav;
	}
	ContractServiceImpl service;
	public void setService (ContractServiceImpl service) {this.service = service;}
}
