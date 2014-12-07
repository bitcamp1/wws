package tariff.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class TariffDaoImpl extends SqlMapClientDaoSupport implements TariffDao{

	@Override
	public List<TariffBean> selectAll(HashMap<String, Integer>paramMap) throws DataAccessException {
		@SuppressWarnings("unchecked")
		List<TariffBean>list =  getSqlMapClientTemplate().queryForList("Tariff.selectAll", paramMap);
		return list;
	}

	@Override
	public int count() throws DataAccessException {
		int result = 0;
		Object o =  getSqlMapClientTemplate().queryForObject("Tariff.count");
		if(o == null){
			result = 0;
		}else{
			result = (Integer)o;
		}
		return result;
	}

	@Override
	public int insert(TariffBean tariff) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().insert("Tariff.insert", tariff);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
	}

	@Override
	public TariffBean selectByIdx(int idx) throws DataAccessException {
		TariffBean tariff = (TariffBean) getSqlMapClientTemplate().queryForObject("Tariff.selectByIdx", idx);
		return tariff;
	}

	@Override
	public int update(TariffBean tariff) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().update("Tariff.update", tariff);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
	}

	@Override
	public int delete(int idx) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().delete("Tariff.delete", idx);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
			return result;
		
		
	}

}
