package mobile.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;


public class MobileDaoImpl extends SqlMapClientDaoSupport implements MobileDao{
	
	
	@Override
	public int insert(MobileBean mobile) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().insert("Mobile.insert",mobile);
			result = 1;
			
		}catch (DataAccessException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<MobileBean> selectAll(HashMap<String, Integer>paramMap) throws DataAccessException {
		List<MobileBean> list = null;
		try{
			list = getSqlMapClientTemplate().queryForList("Mobile.selectAll", paramMap);
			
		}catch(DataAccessException e){e.printStackTrace();}
		return list;
	}

	@Override
	public int count() throws DataAccessException {
		int result = 0;
		Object nullChk = getSqlMapClientTemplate().queryForObject("Mobile.count"); 
		if(nullChk == null){
			result = 0;
		}else{
			result = (Integer)nullChk;
		}
		return result;
	}
	@Override
	public MobileBean selectByIdx(int idx) throws DataAccessException {
		MobileBean mobile = null;
		try{
			mobile = (MobileBean)getSqlMapClientTemplate().queryForObject("Mobile.selectByIdx", idx);
			
		}catch (DataAccessException e) {
			e.printStackTrace();
		}
		
		return mobile;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<MobileBean> selectByCompany(String company)
			throws DataAccessException {
		List<MobileBean> list = null;
		try{
			list = (List<MobileBean>)getSqlMapClientTemplate().queryForList("Mobile.selectByCompany", company);
		}catch(DataAccessException e){e.printStackTrace();}
		return list;
	}
	@Override
	public int checkDupl(String model) throws DataAccessException {
		System.out.println("파라미터model"+model);
		int result = 0;
		Object nullChk = getSqlMapClientTemplate().queryForObject("Mobile.checkDupl",model);
		System.out.println("dao체크값nullchk"+nullChk);
		if(nullChk==null){
			result = 0;
		}else{
			result = (Integer)nullChk;
			System.out.println("dao체크값result"+result);
		}
		return result;
	}
	@Override
	public int update(MobileBean mobile) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().update("Mobile.update", mobile);
			result = 1;
		}catch(Exception e){e.printStackTrace();}
		return result;
	}

	
	@Override
	public int updateMainImg(HashMap<String, String> map)
			throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().update("Mobile.updateMainImg", map);
			result = 1;
			
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
	}

	@Override
	public int updateDtlImg(HashMap<String, String> map)
			throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().update("Mobile.updateDtlImg", map);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
	}

	@Override
	public int delete(int idx) throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().delete("Mobile.delete",idx);
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
	}

	@Override
	public int selectLastInsertId() throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	

	
	

	
}
