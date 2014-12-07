package tgate.model;

import java.util.HashMap;
import java.util.List;



public class TgateServiceImpl implements TgateService{

	private TgateDaoImpl dao;
	public void setDao(TgateDaoImpl dao) {this.dao = dao;}
	
	@Override
	public List<TgateBean> getList(int pageNo, int recordsPerPage)
			throws Exception {
		HashMap<String ,Integer>paramMap = new HashMap<String, Integer>();
		paramMap.put("pageStartIdx", (pageNo-1)*recordsPerPage);
		paramMap.put("pageSize", recordsPerPage);
		return dao.selectAll(paramMap);
	}

	@Override
	public int count() throws Exception {
		return dao.count();
	}

	@Override
	public int regist(TgateBean tgate) throws Exception {
		return dao.insert(tgate);
	}

	@Override
	public TgateBean retrieveByIdx(int idx) throws Exception {
		return dao.selectByIdx(idx);
	}
	@Override
	public List<TgateBean> retrieveByCustId(String custId) throws Exception {
		return (List<TgateBean>) dao.selectByCustId(custId);
	}
	@Override
	public TgateBean retrieveByModel(HashMap<String,String>paramMap) throws Exception {
		return (TgateBean) dao.selectByModel(paramMap);
	}
	
	
	@Override
	public int edit(TgateBean tgate) throws Exception {
		return dao.update(tgate);
	}

	@Override
	public int remove(int idx) throws Exception {
		return dao.delete(idx);
	}

	@Override
	public TgateBean retrieveByJoinType(HashMap<String, String> paramMap)
			throws Exception {
		System.out.println("서비스단 파람맵"+paramMap);
		
		return dao.selectByJoinType(paramMap);
	}

	@Override
	public TgateBean retrieveByTffId(HashMap<String, String> paramMap)
			throws Exception {
		System.out.println("search2서비스단 파람맵"+paramMap);
		return dao.selectByTffId(paramMap);
	}


	
	
	
}
