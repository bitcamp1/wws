package contract.model;

import java.util.HashMap;
import java.util.List;

public class ContractServiceImpl implements ContractService{
	ContractDaoImpl dao;
	
	public void setDao(ContractDaoImpl dao){this.dao=dao;}
	
	@Override
	public List<ContractBean> getList(int pageNo, int recordsPerPage) throws Exception {
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
	public int regist(ContractBean contract) throws Exception {
		return dao.insert(contract);
	}
	@Override
	public ContractBean retrieveByIdx(int idx) throws Exception {
		return dao.selectByIdx(idx);
	}
	@Override
	public int edit(ContractBean contract) throws Exception {
		System.out.println(dao.update(contract));
		return dao.update(contract);
	}

	@Override
	public int remove(int idx) throws Exception {
		return dao.delete(idx);
	}

	

}
