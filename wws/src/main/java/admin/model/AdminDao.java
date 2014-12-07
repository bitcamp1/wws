package admin.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

public interface AdminDao {
	public List<AdminBean> selectAll (HashMap<String, Integer>paramMap) throws DataAccessException;
	public int count () throws DataAccessException;
	public int insert (AdminBean admin) throws DataAccessException;
	public AdminBean selectByIdx(int idx) throws DataAccessException;
	public AdminBean selectById(String id)throws DataAccessException;
	public List<AdminBean> selectByName (String name) throws DataAccessException;
	public int update (AdminBean admin) throws DataAccessException;
	public int delete (int idx) throws DataAccessException;
	public AdminBean login(HashMap<String, String> paramMap) throws DataAccessException;
}
