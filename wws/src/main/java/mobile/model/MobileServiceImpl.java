package mobile.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

public class MobileServiceImpl implements MobileService {
	MobileDaoImpl dao;
	public void setDao(MobileDaoImpl dao){this.dao=dao;}


	@Override
	public int regist(MobileBean mobile) throws Exception {
		return dao.insert(mobile);
	}
	@Override
	public List<MobileBean> getList(int pageNo, int recordsPerPage) throws Exception {
		HashMap<String, Integer>paramMap = new HashMap<String, Integer>();
		paramMap.put("pageStartIdx", (pageNo-1)*recordsPerPage);
		paramMap.put("pageSize", recordsPerPage);
		return (List<MobileBean>)dao.selectAll(paramMap);
	}

	@Override
	public int count() throws Exception {
		return dao.count();
	}
	@Override
	public MobileBean retrieveByIdx(int idx) throws Exception {
		MobileBean mobile = dao.selectByIdx(idx);
		return mobile;
	}
	@Override
	public List<MobileBean> retrieveByCompany(String company) throws Exception {
		List<MobileBean> list =  dao.selectByCompany(company);
		return list;
	}
	public int checkDupl(String model) throws Exception {
		return dao.checkDupl(model);
	}
	@Override
	public int getMaxIdx() throws Exception {
		return dao.selectLastInsertId();
	}


	@Override
	public int edit(MobileBean mobile) throws Exception {
		int result = 0;
		try{
			result = dao.update(mobile);
			
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
	}
	@Override
	public int editMainImg(HashMap<String, String> map) throws Exception {
		return dao.updateMainImg(map);
	}

	@Override
	public int editDtlImg(HashMap<String, String> map) throws Exception {
		return dao.updateDtlImg(map);
	}
	
	@Override
	public int remove(int idx) throws Exception {
		int result = 0;
		try{
			result = dao.delete(idx);
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
	}

	
	



}
