package promotion.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;


public class PromotionServiceImpl implements PromotionService{
	PromotionDaoImpl dao;
	public void setDao(PromotionDaoImpl dao){this.dao = dao;}
	
	@Override
	public List<PromotionBean> getList(int pageNo, int recordsPerPage) throws Exception {
		HashMap<String, Integer> paramMap = new HashMap<String, Integer>();
		paramMap.put("pageStartIdx",(pageNo-1)*recordsPerPage);
		paramMap.put("pageSize", recordsPerPage);
		return  dao.selectAll(paramMap);
	}
	@Override
	public int count() throws Exception {
		return dao.count();
	}

	@Override
	public int regist(PromotionBean promotion) throws Exception {
		return dao.insert(promotion);
	}

	@Override
	public PromotionBean retrieveByIdx(int idx) throws Exception {
		PromotionBean promotion = dao.selectByIdx(idx);
		return promotion;
	}

	@Override
	public int edit(PromotionBean promotion) throws Exception {
		int result = 0;
		try{
			result = dao.update(promotion);
		}catch(DataAccessException e){e.printStackTrace();}
		return result;
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
