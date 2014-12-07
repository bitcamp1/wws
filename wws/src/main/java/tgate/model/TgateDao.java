package tgate.model;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

public interface TgateDao {
	
	public int insert(TgateBean tgate)throws DataAccessException, SQLException;
	public List<TgateBean> selectAll(HashMap<String, Integer>paramMap)throws DataAccessException;
	public int count()throws DataAccessException;
	public TgateBean selectByIdx(int idx)throws DataAccessException;
	public List<TgateBean> selectByCustId(String custId)throws DataAccessException;
	public TgateBean selectByModel(HashMap<String, String>paramMap)throws DataAccessException;
	public int update(TgateBean tgate)throws Exception;
	public int delete(int idx)throws  Exception;
	public TgateBean selectByJoinType(HashMap<String, String> paramMap)throws  Exception;
	public TgateBean selectByTffId(HashMap<String, String> paramMap)throws  Exception;
	
	
}
