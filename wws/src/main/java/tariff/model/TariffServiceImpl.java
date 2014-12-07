package tariff.model;

import java.util.HashMap;
import java.util.List;

public class TariffServiceImpl implements TariffServcie{

	@Override
	public List<TariffBean> getList(int pageNo, int recordsPerPage) throws Exception {
		HashMap<String, Integer>paramMap = new HashMap<String, Integer>();
		paramMap.put("pageStartIdx", (pageNo-1)*recordsPerPage);
		paramMap.put("pageSize", recordsPerPage);
		return (List<TariffBean>)dao.selectAll(paramMap);
	}

	@Override
	public int count() throws Exception {
		return dao.count();
	}

	@Override
	public int regist(TariffBean tariff) throws Exception {
		return dao.insert(tariff);
	}

	@Override
	public TariffBean retrieveByIdx(int idx) throws Exception {
		return dao.selectByIdx(idx);
	}

	@Override
	public int edit(TariffBean tariff) throws Exception {
		return dao.update(tariff);
	}

	@Override
	public int remove(int idx) throws Exception {
		return dao.delete(idx);
	}
	TariffDaoImpl dao;
	public void setDao(TariffDaoImpl dao){this.dao=dao;}
}
