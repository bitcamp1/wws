package admin.model;

import java.util.HashMap;
import java.util.List;

public interface AdminService {
	public List<AdminBean> getList(int pageNo, int recordsPerPage) throws Exception;
	public int count() throws Exception;
	public int regist(AdminBean dto) throws Exception;
	public AdminBean retrieveByIdx (int idx) throws Exception;
	public AdminBean retrieveById (String id)throws Exception;
	public List<AdminBean> retrieveByName(String name) throws Exception;
	public int edit(AdminBean admin) throws Exception;
	public int remove(int idx) throws Exception;
	public AdminBean login(HashMap<String, String>paramMap)throws Exception;
}
