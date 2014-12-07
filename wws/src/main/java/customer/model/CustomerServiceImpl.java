package customer.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

public class CustomerServiceImpl implements CustomerService{
	CustomerDaoImpl dao;
	
	public void setDao(CustomerDaoImpl dao){this.dao=dao;}
	
	@Override
	public List<CustomerBean> getList(int pageNo, int recordsPerPage) throws Exception {
		HashMap<String, Integer> paramMap = new HashMap<String, Integer>();
		paramMap.put("pageStartIdx", (pageNo-1)*recordsPerPage);
		paramMap.put("pageSize", recordsPerPage);
		return dao.selectAll(paramMap);
	}
	@Override
	public int count() throws Exception {
		return dao.count();
	}
	@Override
	public int regist(CustomerBean customer) throws Exception {
		return dao.insert(customer);
	}
	@Override
	public CustomerBean retrieveByIdx(int idx) throws Exception {
		CustomerBean customer = dao.selectByIdx(idx);
		int custIdx = customer.getCustIdx();
		System.out.println("svc 값 : "+custIdx);
		return customer;
	}
	@Override
	public CustomerBean retrieveById(String id) throws Exception {
		CustomerBean customer = dao.selectById(id);
		return customer;
	}
	@Override
	public List<CustomerBean> retrieveByName(String name) throws Exception {
		List<CustomerBean>list = dao.selectByName(name);
		return list;
	}

	@Override
	public int edit(CustomerBean customer) throws Exception {
		int result = 0;
		try{
			result = dao.update(customer);
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

	@Override
	public int checkDupl(String id) throws Exception {
		return dao.checkDupl(id);
	}

	
}
