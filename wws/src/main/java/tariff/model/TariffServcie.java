package tariff.model;

import java.util.List;

public interface TariffServcie {
	public List<TariffBean> getList(int pageNo, int recordsPerPage) throws Exception;
	public int count()throws Exception;
	public int regist(TariffBean tariff) throws Exception;
	public TariffBean retrieveByIdx(int idx)throws Exception;
	public int edit(TariffBean tariff) throws Exception;
	public int remove(int idx) throws Exception;
}
