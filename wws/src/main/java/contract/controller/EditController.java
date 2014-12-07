package contract.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import contract.model.ContractBean;
import contract.model.ContractServiceImpl;

public class EditController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		ContractBean contract = service.retrieveByIdx(idx);
		String joinType = request.getParameter("joinType");
		int joinFee = Integer.parseInt(request.getParameter("joinFee"));
		int usim = Integer.parseInt(request.getParameter("usim"));
		int iMonth = Integer.parseInt(request.getParameter("iMonth"));
		String joinNm = request.getParameter("joinNm");
		
		
		contract.setiMonth(iMonth);
		contract.setJoinType(joinType);
		contract.setJoinFee(joinFee);
		contract.setUsim(usim);
		contract.setJoinNm(joinNm);
		
		ModelAndView mav = new ModelAndView();
		int result = service.edit(contract);
		
		if(result == 0){
			throw new Exception("수정실패");
		}
		mav.setViewName("redirect:/contract/detail.do?idx="+request.getParameter("idx"));
		
		return mav;
	}
	ContractServiceImpl service;
	public void setService(ContractServiceImpl service){this.service = service;}

}
