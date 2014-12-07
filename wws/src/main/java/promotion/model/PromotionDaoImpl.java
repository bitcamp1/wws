package promotion.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;


public class PromotionDaoImpl extends SqlMapClientDaoSupport implements PromotionDao{

	@Override
	public List<PromotionBean> selectAll(HashMap<String, Integer>paramMap) throws DataAccessException {
		@SuppressWarnings("unchecked")
		List<PromotionBean>list =  getSqlMapClientTemplate().queryForList("Promotion.selectAll", paramMap);
		return list;
	}

	@Override
	public int count() throws DataAccessException {
		 int result = 0;
		 Object nullChk = getSqlMapClientTemplate().queryForObject("Promotion.count");
		 
				if(nullChk == null){
					result = 0;
				}else{
					result = (Integer)nullChk;
				}
		return result;
	}

	@Override
	public int insert(PromotionBean promotion) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().insert("Promotion.insert", promotion);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		
		return result;
	}

	@Override
	public PromotionBean selectByIdx(int idx) throws DataAccessException {
		PromotionBean promotion = (PromotionBean) getSqlMapClientTemplate().queryForObject("Promotion.selectByIdx", idx);
		return promotion;
	}

	@Override
	public int update(PromotionBean promotion) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().update("Promotion.update", promotion);
			result = 1;
		}catch(Exception e){e.printStackTrace();}
		return result;
	}

	@Override
	public int delete(int idx) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().delete("Promotion.delete",idx);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
	}

}
