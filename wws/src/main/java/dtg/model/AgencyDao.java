package dtg.model;

import java.util.HashMap;

public interface AgencyDao {
	AgencyDto exist(HashMap<String, String>paramMap);
}
