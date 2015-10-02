package web.sample.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import web.common.dao.AbstractDAO;

@Repository("IncExpDao")
public class IncExpDao extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectIncExp(Map<String, Object> map) throws Exception{
		List<Map<String, Object>> result = new ArrayList<Map<String, Object>>();
		String namespace = (String) map.get("namespace");
		String queryName = (String) map.get("queryName");
		
		try {
			String page = (String) map.get("page");
			String limit = (String) map.get("rows");
			String sidx = (String) map.get("sidx");
			String sord = (String) map.get("sord");
			
			if(sidx == null) {
				sidx = "1";
			}
			
			int count = (Integer) selectOne(namespace + ".getCount", map);
			
			int total_page = 0;
			if(count > 0 && Integer.parseInt(limit) > 0) {
				total_page = (int) Math.ceil(count/Double.parseDouble(limit));
			} else {
				total_page = 0;
			}
			if(Integer.parseInt(page) > total_page) {
				page = "" + total_page;
			}
			int start = Integer.parseInt(limit) * (Integer.parseInt(page) - 1) + 1;
			map.put("sidx", sidx);
			map.put("sord", sord);
			map.put("start", start);
			map.put("limit", start + Integer.parseInt(limit) - 1);
    	
			result = selectList(namespace + "." + queryName, map);

			map.put("page", page);
			map.put("total", total_page);
			map.put("records", count);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
    	
		return result;
	}
}
