package customer.model;
import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;



public class CustomerDaoImpl extends SqlMapClientDaoSupport implements CustomerDao {

	@Override
	public List<CustomerBean> selectAll(HashMap<String,  Integer>paramMap) throws DataAccessException {
		@SuppressWarnings("unchecked")
		List<CustomerBean> list = getSqlMapClientTemplate().queryForList("Customer.selectAll",paramMap);
		return list;
	}
	@Override
	public int count() throws DataAccessException {
		int result = 0;
		Object nullChk = getSqlMapClientTemplate().queryForObject("Customer.count");
		if(nullChk == null){
			result = 0;
		}else{
			result = (Integer)nullChk;
		}
		return result;
	}
	

	@Override
	public int insert(CustomerBean customer) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().insert("Customer.insert", customer);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
		
	}
	@Override
	public CustomerBean selectByIdx(int idx) throws DataAccessException {
		CustomerBean customer = (CustomerBean) getSqlMapClientTemplate().queryForObject("Customer.selectByIdx",idx);
		return customer;
	}
	@Override
	public CustomerBean selectById(String id)throws DataAccessException {
		CustomerBean customer = (CustomerBean)getSqlMapClientTemplate().queryForObject("Customer.selectById", id);	
		return customer;
	}
	@Override
	public List<CustomerBean> selectByName(String name)throws DataAccessException {
		@SuppressWarnings("unchecked")
		List<CustomerBean>list = getSqlMapClientTemplate().queryForList("Customer.selectByName", name);	
		return list;
	}
	@Override
	public int update(CustomerBean customer) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().update("Customer.update", customer);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
		
	}

	@Override
	public int delete(int idx) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().delete("Customer.delete", idx);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
		
	}
	@Override
	public int checkDupl(String id) throws DataAccessException {
		int result = 0;
		Object nullChk = getSqlMapClientTemplate().queryForObject("Customer.checkDupl",id);
		if(nullChk == null){
			result = 0;
		}else{
			result = (Integer)nullChk;
		}
		return result;
	}

	
	
}
