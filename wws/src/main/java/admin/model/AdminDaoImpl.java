package admin.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;


public class AdminDaoImpl extends SqlMapClientDaoSupport implements AdminDao{


	@Override
	public List<AdminBean> selectAll(HashMap<String, Integer>paramMap) throws DataAccessException {
		@SuppressWarnings("unchecked")
		List<AdminBean> list = getSqlMapClientTemplate().queryForList("Admin.selectAll",paramMap);
		
		return list;
	}
	@Override
	public int count() throws DataAccessException {
		int result = 0;
		Object nullChk = getSqlMapClientTemplate().queryForObject("Admin.count");
		if(nullChk == null){
			result = 0;
		}else{
			result = (Integer)nullChk;
		}
				
		return result;
	}
	
	@Override
	public int insert(AdminBean admin) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().insert("Admin.insert",admin);
			result = 1;
		}catch(Exception e){e.printStackTrace();}
		
		return result;
	}
	@Override
	public AdminBean selectByIdx(int idx) throws DataAccessException {
		AdminBean admin = (AdminBean) getSqlMapClientTemplate().queryForObject("Admin.selectByIdx",idx);
		return admin;
	}
	@Override
	public AdminBean selectById(String id) throws DataAccessException {
		AdminBean admin = null;
		try{
			admin = (AdminBean) getSqlMapClientTemplate().queryForObject("Admin.selectById",id);
			String test = admin.getId();
			System.out.println("출력한 ID:"+test);
		}catch(DataAccessException e){e.printStackTrace();}
		return admin;
	}
	@Override
	public List<AdminBean> selectByName(String name) throws DataAccessException {
		@SuppressWarnings("unchecked")
		List<AdminBean> list = getSqlMapClientTemplate().queryForList("Admin.selectByName", name);
		return list;
	}
	@Override
	public int update(AdminBean admin) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().update("Admin.update",admin);
			result = 1;
		}catch(Exception e){e.printStackTrace();}
		return result;
	}

	@Override
	public int delete(int idx) throws DataAccessException {
		int result=0;
		try{
			getSqlMapClientTemplate().delete("Admin.delete",idx);
		}catch(Exception e){e.printStackTrace();}
		return result;
		
	}
	@Override
	public AdminBean login(HashMap<String, String>paramMap) throws DataAccessException {
		AdminBean admin = new AdminBean();
		try{
			
			admin  = (AdminBean) getSqlMapClientTemplate().queryForObject("Admin.login", paramMap);
		}catch(Exception e){e.printStackTrace();}
		return admin;
	}
	

	

	
	
	
	
}
