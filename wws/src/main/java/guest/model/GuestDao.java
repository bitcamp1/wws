package guest.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

public interface GuestDao {
	
	public List<GuestBean> selectAll (HashMap<String, Integer>paramMap) throws DataAccessException;
	public int count() throws DataAccessException;
	public int insert (GuestBean guest) throws DataAccessException;
	public GuestBean selectByIdx (int idx) throws DataAccessException;
	public List<GuestBean> selectByName (String name) throws DataAccessException;
	public int update (GuestBean guest) throws DataAccessException;
	public int delete (int idx) throws DataAccessException;
	
	
}
