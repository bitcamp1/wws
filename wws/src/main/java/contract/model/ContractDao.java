package contract.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

public interface ContractDao {
	public List<ContractBean> selectAll(HashMap<String, Integer> paramMap) throws DataAccessException;
	public int count()throws DataAccessException;
	public int insert(ContractBean contract)throws DataAccessException;
	public ContractBean selectByIdx(int idx)throws DataAccessException;
	public int update(ContractBean contract)throws DataAccessException;
	public int delete(int idx)throws DataAccessException;
	
}
