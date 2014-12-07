package contract.model;

import java.util.List;

public interface ContractService {
	public List<ContractBean> getList(int pageNo, int recordsPerPage) throws Exception;
	public int count()throws Exception;
	public int regist(ContractBean contract)throws Exception;
	public ContractBean retrieveByIdx (int idx)throws Exception;
	public int edit(ContractBean contract)throws Exception;
	public int remove (int idx)throws Exception;
	
}
