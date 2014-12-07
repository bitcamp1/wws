package tariff.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import tariff.model.TariffBean;
import tariff.model.TariffServiceImpl;

public class EditController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		TariffBean tariff = service.retrieveByIdx(idx);
		int price = Integer.parseInt(request.getParameter("price"));
		String tffId= request.getParameter("tffId");
		String letter = request.getParameter("letter");
		String data = request.getParameter("data");
		String mvoip = request.getParameter("mvoip");
		int discount= Integer.parseInt(request.getParameter("discount"));
		
		tariff.setTffPrice(price);
		tariff.setTffId(tffId);
		tariff.setLetter(letter);
		tariff.setData(data);
		tariff.setMvoip(mvoip);
		tariff.setDiscount(discount);
		
		ModelAndView mav = new ModelAndView();
		
		
		int result = service.edit(tariff);
		
		if(result==0){
			throw new Exception("수정실패");
		}
		
		mav.setViewName("redirect:/tariff/detail.do?idx="+request.getParameter("idx"));
		return mav;
	}
	
	
	TariffServiceImpl service;
	public void setService(TariffServiceImpl service){this.service=service;}
	
}
