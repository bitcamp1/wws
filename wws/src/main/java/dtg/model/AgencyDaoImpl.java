package dtg.model;

import java.util.HashMap;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class AgencyDaoImpl extends SqlMapClientDaoSupport implements AgencyDao{

	@Override
	public AgencyDto exist(HashMap<String, String> paramMap) {
		AgencyDto dto = (AgencyDto)getSqlMapClientTemplate().queryForObject("Agency.exist",paramMap);
		return dto;
	}

}
