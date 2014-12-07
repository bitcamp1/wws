package image.model;

import java.util.HashMap;

import org.springframework.dao.DataAccessException;

public interface ImageDao {
	public int selectLastInsertId()throws DataAccessException;
	public int insert()throws DataAccessException;
	public int update(HashMap<String, Integer> map)throws DataAccessException;
}
