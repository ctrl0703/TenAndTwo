package web.sample.service;

import java.util.List;
import java.util.Map;

public interface GridService {
	List<Map<String, Object>> selectGridList(Map<String, Object> map) throws Exception;
}
