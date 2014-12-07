package mobile.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;


public interface MobileDao {
	
	public int insert(MobileBean mobile) throws DataAccessException;
	
	public List<MobileBean> selectAll(HashMap<String, Integer>paramMap)throws DataAccessException;
	public int count() throws DataAccessException;
	public MobileBean selectByIdx(int idx) throws DataAccessException;
	public List<MobileBean> selectByCompany(String company)throws DataAccessException;
	public int selectLastInsertId()throws DataAccessException;
	public int checkDupl(String model) throws DataAccessException;
	public int update(MobileBean mobile) throws DataAccessException;
	public int updateMainImg(HashMap<String, String> map)throws DataAccessException;
	public int updateDtlImg(HashMap<String, String> map)throws DataAccessException;
	
	public int delete(int idx) throws DataAccessException;
	
}
