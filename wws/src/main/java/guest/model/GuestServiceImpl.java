package guest.model;

import java.util.HashMap;
import java.util.List;


public class GuestServiceImpl implements GuestService{
	
	GuestDaoImpl dao;
	

	public void setDao(GuestDaoImpl dao) {
		this.dao = dao;
	}


	@Override
	public List<GuestBean> getList(int pageNo, int recordsPerPage)
			throws Exception {
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
	public int regist(GuestBean guest) throws Exception {
		return dao.insert(guest);
	}


	@Override
	public GuestBean retrieveByIdx(int idx) throws Exception {
		GuestBean guest = dao.selectByIdx(idx);
		return guest;
	}


	@Override
	public List<GuestBean> retrieveByName(String name) throws Exception {
		List<GuestBean> list = dao.selectByName(name);
		return list;
	}


	@Override
	public int edit(GuestBean guest) throws Exception {
		
		return dao.update(guest);

	}
	@Override
	public int remove(int idx) throws Exception {
		
			return dao.delete(idx);
	
	}
	






	

}
