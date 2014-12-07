package customer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import customer.model.CustomerBean;
import customer.model.CustomerServiceImpl;

public class EditController implements Controller{
	CustomerServiceImpl service;
	
	public void setService(CustomerServiceImpl service) {
		this.service = service;
	}
		
		ModelAndView mav=new ModelAndView();

		@Override
		public ModelAndView handleRequest(HttpServletRequest request,
				HttpServletResponse response) throws Exception {
			int idx = Integer.parseInt(request.getParameter("idx"));
			CustomerBean customer = service.retrieveByIdx(idx);
			String phone = request.getParameter("phone");
			String manager = request.getParameter("manager");
			String mgrTel = request.getParameter("mgrTel");
			String mgrCel = request.getParameter("mgrCel");
			String mgrEmail = request.getParameter("mgrEmail");
			String partner = request.getParameter("partner");
			String ptrTel = request.getParameter("ptrTel");
			String ptrCel = request.getParameter("ptrCel");
			String ptrEamil = request.getParameter("ptrEmail");
			int posting = Integer.parseInt(request.getParameter("posing"));
			
			customer.setPhone(phone);
			customer.setManager(manager);
			customer.setMgrTel(mgrTel);
			customer.setMgrCel(mgrCel);
			customer.setMgrEmail(mgrEmail);
			customer.setPartner(partner);
			customer.setPtrTel(ptrTel);
			customer.setPtrCel(ptrCel);
			customer.setPtrEmail(ptrEamil);
			customer.setPosting(posting);
			
			ModelAndView mav = new ModelAndView();
			
			
			int result = service.edit(customer);
			
			if(result==0){
				throw new Exception("수정실패");
			}
			
			mav.setViewName("redirect:/customer/detail.do?idx="+request.getParameter("idx"));
			return mav;
		}

}
