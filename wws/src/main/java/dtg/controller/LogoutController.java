package dtg.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import dtg.model.AgencyService;
import dtg.model.AjaxResult;

public class LogoutController implements Controller{
	AgencyService service;
	public void setService(AgencyService service) {
		this.service = service;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession(true);
		String id =  (String) session.getAttribute("agencyId"); /*dtg.controller.LoginController에 agencyId 설정*/
		
		if(id!=null){
			JSONObject json = new JSONObject();
			json.put("status", AjaxResult.SUCCESS);
			session.invalidate();
			PrintWriter writer = response.getWriter();
			writer.println(json.toString());
			writer.flush();
			writer.close();
			
		}else{
			JSONObject json = new JSONObject();
			json.put("status", AjaxResult.FAIL);
			PrintWriter writer = response.getWriter();
			writer.println(json.toString());
			writer.flush();
			writer.close();
		}
		
		return null;
	}

}
