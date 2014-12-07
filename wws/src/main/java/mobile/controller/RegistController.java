package mobile.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mobile.model.MobileBean;
import mobile.model.MobileServiceImpl;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;




public class RegistController extends MultiActionController{
	
	MobileServiceImpl service;
	public void setService(MobileServiceImpl service) {this.service = service;}
	
	@Override
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		MobileBean bean = new MobileBean();
		ModelAndView mav = new ModelAndView();
		String model = request.getParameter("model");
		int checkDupl = service.checkDupl(model);
		System.out.println("중복체크:"+checkDupl);
		if(checkDupl != 0){
			System.out.println("모델중복");
			mav.addObject("checkDupl",checkDupl);
			mav.setViewName("mobile/regist");
		}else{
			bind(request, bean);
			String company = request.getParameter("company");
			System.out.println("제조사"+company);
			String name = request.getParameter("name");
			System.out.println(name);
			int price = Integer.parseInt(request.getParameter("price"));
			System.out.println(price);
			int result = service.regist(bean);
			if(result <1){
				System.out.println("모바일 등록실패");
			}
			mav.setViewName("mobile/regist");
		}
		return mav;
	}
	
}
