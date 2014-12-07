package customer.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

public interface CustomerDao {
	public List<CustomerBean> selectAll(HashMap<String, Integer>paramMap)throws DataAccessException;
	public int count () throws DataAccessException;
	public int insert (CustomerBean customer) throws DataAccessException;
	public CustomerBean selectByIdx(int idx) throws DataAccessException;
	public CustomerBean selectById(String id)throws DataAccessException;
	public List<CustomerBean> selectByName(String name)throws DataAccessException;
	public int checkDupl(String id)throws DataAccessException;
	public int update (CustomerBean customer) throws DataAccessException;
	public int delete (int idx) throws DataAccessException;
	
	
}
