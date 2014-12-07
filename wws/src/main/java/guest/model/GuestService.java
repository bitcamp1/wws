package guest.model;

import java.util.List;

public interface GuestService {
	public List<GuestBean> getList (int pageNo, int recordsPerPage) throws Exception;
	public int count() throws Exception;
	public int regist (GuestBean guest) throws Exception;
	public GuestBean retrieveByIdx(int idx)throws Exception;
	public List<GuestBean> retrieveByName (String name) throws Exception;
	public int edit (GuestBean guest) throws Exception;
	public int remove (int idx) throws Exception;
	
}
