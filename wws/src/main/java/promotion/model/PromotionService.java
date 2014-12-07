package promotion.model;

import java.util.List;

public interface PromotionService {
	public List<PromotionBean> getList(int pageNo, int recordsPerPage) throws Exception;
	public int count() throws Exception;
	public int regist(PromotionBean promotion)throws Exception;
	public PromotionBean retrieveByIdx(int idx)throws Exception;
	public int edit(PromotionBean promotion) throws Exception;
	public int remove(int idx) throws Exception;
}
