package contract.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class ContractDaoImpl extends SqlMapClientDaoSupport implements ContractDao{

	
	@Override
	public int insert(ContractBean contract) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().insert("Contract.insert", contract);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
	}
	@Override
	public List<ContractBean> selectAll(HashMap<String, Integer>paramMap) throws DataAccessException {
		@SuppressWarnings("unchecked")
		List<ContractBean> list = getSqlMapClientTemplate().queryForList("Contract.selectAll", paramMap);
		return list;
	}
	@Override
	public int count() throws DataAccessException {
		int result = 0;
		Object nullChk = getSqlMapClientTemplate().queryForObject("Contract.count");
		if(nullChk == null){
			result = 0;
		}else{
			result = (Integer)nullChk;
		}
				
		return result;
	}
	@Override
	public ContractBean selectByIdx(int idx) throws DataAccessException {
		
		ContractBean contract = (ContractBean) getSqlMapClientTemplate().queryForObject("Contract.selectByIdx", idx);
		return	 contract;
	}
	@Override
	public int update(ContractBean contract) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().update("Contract.update", contract);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
	}

	

	@Override
	public int delete(int idx) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().delete("Contract.delete",idx);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
	}

	

}
