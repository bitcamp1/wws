package guest.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;


public class GuestDaoImpl extends SqlMapClientDaoSupport implements GuestDao{
	

	@Override
	public List<GuestBean> selectAll(HashMap<String, Integer>paramMap) throws DataAccessException {
		@SuppressWarnings("unchecked")
		List<GuestBean> list = getSqlMapClientTemplate().queryForList("Guest.selectAll",paramMap);
		return list;
	}
	@Override
	public int count() throws DataAccessException {
		int result = 0;
		Object nullChk = getSqlMapClientTemplate().queryForObject("Guest.count");
		if(nullChk == null){
			result = 0;
		}else{
			result = (Integer)nullChk;
		}
		return result;
	}
	@Override
	public int insert(GuestBean guest) throws DataAccessException {
		int result=0;
		try{
			getSqlMapClientTemplate().insert("Guest.insert",guest);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
		
	}
	@Override
	public GuestBean selectByIdx(int idx) throws DataAccessException {
		GuestBean guest = (GuestBean) getSqlMapClientTemplate().queryForObject("Guest.selectByIdx",idx);
		return guest;
	}
	@Override
	public List<GuestBean> selectByName(String name) throws DataAccessException {
		@SuppressWarnings("unchecked")
		List<GuestBean> list = (List<GuestBean>)getSqlMapClientTemplate().queryForList("Guest.selectByName", name);
		return list;
	}
	

	@Override
	public int update(GuestBean guest) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().update("Guest.update", guest);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
		
	}
	@Override
	public int delete(int idx) throws DataAccessException {
		int result = 0;
		System.out.println("dao값"+idx);
		try{
			getSqlMapClientTemplate().delete("Guest.delete",idx);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
		
	}

	

	

}
