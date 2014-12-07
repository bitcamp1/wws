package admin.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService{
	
	AdminDaoImpl dao;
	public void setDao(AdminDaoImpl dao){this.dao=dao;}
		
	
	@Override
	public List<AdminBean> getList(int pageNo, int recordsPerPage) throws Exception {
		HashMap<String, Integer> paramMap = new HashMap<String, Integer>();
		paramMap.put("pageStartIdx",(pageNo-1)*recordsPerPage);
		paramMap.put("pageSize", recordsPerPage);
		return  dao.selectAll(paramMap);
	}
	@Override
	public int count() throws Exception {
		return dao.count();
	}
	@Override
	public int regist(AdminBean admin) throws Exception {
		return dao.insert(admin);
	}
	@Override
	public AdminBean retrieveByIdx(int idx) throws Exception {
		AdminBean admin = dao.selectByIdx(idx);
		return admin;
	}
	@Override
	public AdminBean retrieveById(String id) throws Exception {
		AdminBean admin = dao.selectById(id);
		return admin;
	}
	@Override
	public List<AdminBean> retrieveByName(String name) throws Exception {
		return dao.selectByName(name);
	}
	@Override
	public int edit(AdminBean admin) throws Exception {
		return dao.update(admin);
	}
	@Override
	public int remove(int idx) throws Exception {
		return dao.delete(idx);
	}


	@Override
	public AdminBean login(HashMap<String, String>paramMap) throws Exception {
		
		return dao.login(paramMap);
	}


	
	


	
	
}
