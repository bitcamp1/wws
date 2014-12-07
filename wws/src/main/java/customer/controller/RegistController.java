package customer.controller;






import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;


import customer.model.CustomerBean;
import customer.model.CustomerServiceImpl;

public class RegistController extends MultiActionController{
	CustomerServiceImpl service;
	
	public void setService(CustomerServiceImpl service) {
		this.service = service;
	}
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		CustomerBean customer = new CustomerBean();
		String id = request.getParameter("custId");
		int checkDupl = service.checkDupl(id);
		System.out.println("중복체크:"+checkDupl);
		
		if(checkDupl != 0){
			System.out.println("아이디중복");
			mav.addObject("checkDupl", checkDupl);
			mav.setViewName("customer/regist");
		}else{
			bind(request, customer);
			int result = service.regist(customer);
			if(result < 1)throw new Exception("고객 등록 실패했습니다.");
			mav.setViewName("customer/regist");
		}
		return mav;
		
	}

}
