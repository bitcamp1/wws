package promotion.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

public interface PromotionDao {
	public List<PromotionBean> selectAll(HashMap<String, Integer>paramMap) throws DataAccessException;
	public int count() throws DataAccessException;
	public int insert(PromotionBean promotion) throws DataAccessException;
	public PromotionBean selectByIdx(int idx)throws DataAccessException;
	public int update(PromotionBean promotion)throws DataAccessException;
	public int delete(int idx)throws DataAccessException;
}
