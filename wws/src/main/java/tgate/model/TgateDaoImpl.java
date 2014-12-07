package tgate.model;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;


public class TgateDaoImpl extends SqlMapClientDaoSupport implements TgateDao{

	
	

	@Override
	public int insert(TgateBean tgate) throws DataAccessException, SQLException {
		int result = 0;
		
		try{
			getSqlMapClientTemplate().getSqlMapClient().startTransaction() ;
			getSqlMapClientTemplate().getSqlMapClient().getCurrentConnection().setAutoCommit(false) ;
			getSqlMapClientTemplate().getSqlMapClient().commitTransaction() ;
			getSqlMapClientTemplate().insert("Tgate.insert",tgate);
			getSqlMapClientTemplate().insert("Tgate.insert2",tgate);
			getSqlMapClientTemplate().insert("Tgate.insert3",tgate);
			getSqlMapClientTemplate().insert("Tgate.insert4",tgate);
			getSqlMapClientTemplate().insert("Tgate.insert5",tgate);
			getSqlMapClientTemplate().getSqlMapClient().executeBatch();
			getSqlMapClientTemplate().getSqlMapClient().commitTransaction();
			result = 1;
		}catch(Exception e){e.printStackTrace();}
		finally{
			getSqlMapClientTemplate().getSqlMapClient().endTransaction();
			result = 1;
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<TgateBean> selectAll(HashMap<String, Integer> paramMap)
			throws DataAccessException {
		return getSqlMapClientTemplate().queryForList("Tgate.selectAll",paramMap);
		
	}

	@Override
	public int count() throws DataAccessException {
		int result = 0;
		Object nullChk = getSqlMapClientTemplate().queryForObject("Tgate.count");
		if(nullChk == null){
			result = 0;
		}else{
			result = (Integer)nullChk;
		}
		return result;
	}
	@Override
	public TgateBean selectByIdx(int idx) throws DataAccessException {
		TgateBean tgate = (TgateBean) getSqlMapClientTemplate().queryForObject("Tgate.selectByIdx",idx);
		return tgate;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<TgateBean> selectByCustId(String custId ) throws DataAccessException {
		
		
		return getSqlMapClientTemplate().queryForList("Tgate.selectByCustId",custId);
	}
	@Override
	public TgateBean selectByModel(HashMap<String,String>paramMap) throws DataAccessException {
		return  (TgateBean) getSqlMapClientTemplate().queryForObject("Tgate.selectByModel",paramMap);
	}
	@Override
	public int update(TgateBean tgate) throws Exception {
		int result = 0;
		
		try{
			getSqlMapClientTemplate().getSqlMapClient().startTransaction() ;
			getSqlMapClientTemplate().getSqlMapClient().getCurrentConnection().setAutoCommit(false) ;
			getSqlMapClientTemplate().getSqlMapClient().commitTransaction() ;
			getSqlMapClientTemplate().insert("Tgate.update",tgate);
			getSqlMapClientTemplate().getSqlMapClient().executeBatch();
			getSqlMapClientTemplate().getSqlMapClient().commitTransaction();
			result = 1;
		}catch(Exception e){e.printStackTrace();}
		finally{
			getSqlMapClientTemplate().getSqlMapClient().endTransaction();
			result = 1;
		}
		return result;
	}

	@Override
	public int delete(int idx) throws Exception {
		int result = 0;
		
		try{
			getSqlMapClientTemplate().getSqlMapClient().startTransaction() ;
			getSqlMapClientTemplate().getSqlMapClient().getCurrentConnection().setAutoCommit(false) ;
			getSqlMapClientTemplate().getSqlMapClient().commitTransaction() ;
			getSqlMapClientTemplate().insert("Tgate.delete",idx);
			getSqlMapClientTemplate().getSqlMapClient().executeBatch();
			getSqlMapClientTemplate().getSqlMapClient().commitTransaction();
			result = 1;
		}catch(Exception e){e.printStackTrace();}
		finally{
			getSqlMapClientTemplate().getSqlMapClient().endTransaction();
			result = 1;
		}
		return result;
	}
	@Override
	public TgateBean selectByJoinType(HashMap<String, String> paramMap)
			throws Exception {
		TgateBean tgate =(TgateBean)getSqlMapClient().queryForObject("Tgate.selectByJoinType", paramMap);
		System.out.println("JoinType dao파람맵:"+paramMap);
		return tgate;
	}
	@Override
	public TgateBean selectByTffId(HashMap<String, String> paramMap)
			throws Exception {
		TgateBean tgate =(TgateBean)getSqlMapClient().queryForObject("Tgate.selectByJoinType", paramMap);
		System.out.println("ByTffId dao파람맵:"+paramMap);
				
		return tgate;
	}

}
