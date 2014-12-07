package image.model;


import java.util.HashMap;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;


public class ImageDaoImpl extends SqlMapClientDaoSupport implements ImageDao{

	@Override
	public int selectLastInsertId() throws DataAccessException {
		int result = 0;
		Object nullChk = getSqlMapClientTemplate().queryForObject("Image.selectLastInsertId");
		if(nullChk == null){
			result = 0;
		}else{
			result = (Integer)nullChk;
		}
		
		return result;
	}

	@Override
	public int insert() throws DataAccessException {
		int result = 0;
		try{
			getSqlMapClientTemplate().insert("Image.insert");
			result = 1;
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
	}

	@Override
	public int update(HashMap<String, Integer> map) throws DataAccessException {
		int result=0;
		try{
			getSqlMapClientTemplate().update("Image.update");
			result = 1;
			
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
	}
	
}
