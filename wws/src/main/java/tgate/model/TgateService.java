package tgate.model;

import java.util.HashMap;
import java.util.List;


public interface TgateService {
	public int regist(TgateBean tgate)throws Exception;
	public List<TgateBean> getList(int pageNo,int recordsPerPage )throws Exception;
	public int count()throws Exception;
	public TgateBean retrieveByIdx(int idx)throws Exception;
	public List<TgateBean> retrieveByCustId(String custId )throws Exception;
	public TgateBean retrieveByModel(HashMap<String,String>paramMap )throws Exception;
	public TgateBean retrieveByJoinType(HashMap<String,String>paramMap)throws Exception;
	public TgateBean retrieveByTffId(HashMap<String,String>paramMap)throws Exception;
	
	public int edit(TgateBean tgate)throws Exception;
	public int remove(int idx) throws Exception;
	
	
}
