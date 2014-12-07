package tariff.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

public interface TariffDao {
  public List<TariffBean> selectAll(HashMap<String, Integer>paramMap)throws DataAccessException;
  public int count()throws DataAccessException;
  public int insert(TariffBean tariff)throws DataAccessException;
  public TariffBean selectByIdx(int idx)throws DataAccessException;
  public int update(TariffBean tariff)throws DataAccessException;
  public int delete(int idx) throws DataAccessException;
  
}
