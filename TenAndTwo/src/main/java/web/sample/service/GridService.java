package web.sample.service;

import java.util.List;
import java.util.Map;

public interface GridService {
	List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception;
}
