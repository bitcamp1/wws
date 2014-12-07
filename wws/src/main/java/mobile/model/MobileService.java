package mobile.model;

import java.util.HashMap;
import java.util.List;

public interface MobileService {
	
	public int regist(MobileBean mobile)throws Exception;
	
	public List<MobileBean> getList(int pageNo, int recordsPerPage)throws Exception;
	public int count() throws Exception;
	public int getMaxIdx() throws Exception;
	public MobileBean retrieveByIdx(int idx)throws Exception;
	public List<MobileBean> retrieveByCompany(String company)throws Exception;
	public int checkDupl(String model)throws Exception;
	public int edit(MobileBean mobile)throws Exception;
	public int editMainImg(HashMap<String, String>map)throws Exception;
	public int editDtlImg(HashMap<String, String>map)throws Exception;
	
	public int remove(int idx) throws Exception;
	
}
