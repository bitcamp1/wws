package dtg.model;

import java.util.HashMap;

import org.springframework.stereotype.Service;

@Service
public class AgencyServiceImpl implements AgencyService{
	
	AgencyDao dao;
	public void setDao(AgencyDao dao) {
		this.dao = dao;
	}
	
	@Override
	public AgencyDto exist(String id, String pw) throws Exception {
		HashMap<String, String>paramMap = new HashMap<String, String>();
		paramMap.put("id",id);
		paramMap.put("pw", pw);
		
		return dao.exist(paramMap);
	}

}
