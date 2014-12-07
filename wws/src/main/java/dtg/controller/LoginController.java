package dtg.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import dtg.model.AgencyDto;
import dtg.model.AgencyService;
import dtg.model.AjaxResult;



import net.sf.json.JSONObject;
public class LoginController implements Controller{
	
	AgencyService service;
	public void setService(AgencyService service) {
		this.service = service;
	}
	
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		HttpSession session = request.getSession();
		session.setAttribute("agencyId", id);
		
		AgencyDto dto = service.exist(id, pw);
		
		if(dto!=null){
		JSONObject jo = JSONObject.fromObject(dto);
		jo.put("status", AjaxResult.SUCCESS);
		/*response.setContentType("text/javascript");*/
		PrintWriter writer = response.getWriter();
		writer.println(jo.toString());
		writer.flush();
		writer.close();
		}else{
			JSONObject jo = new JSONObject();
			jo.put("status", AjaxResult.FAIL);
			/*response.setContentType("text/javascript");*/
			PrintWriter writer = response.getWriter();
			writer.println(jo.toString());
			writer.flush();
			writer.close();
		}
		return null;
		
		
	}

}
