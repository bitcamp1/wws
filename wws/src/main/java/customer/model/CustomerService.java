package customer.model;

import java.util.List;

public interface CustomerService {
	public List<CustomerBean> getList(int pageNo, int recordsPerPage)throws Exception;
	public int count () throws Exception;
	public int regist(CustomerBean customer) throws Exception;
	public int checkDupl(String id)throws Exception;
	public CustomerBean retrieveByIdx(int idx)throws Exception;
	public CustomerBean retrieveById(String id)throws Exception;
	public List<CustomerBean> retrieveByName(String name)throws Exception;
	public int edit (CustomerBean customer) throws Exception;
	public int remove (int idx) throws Exception;
	
}
