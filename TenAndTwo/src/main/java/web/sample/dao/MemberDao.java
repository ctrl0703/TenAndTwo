package web.sample.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import web.common.dao.AbstractDAO;

@Repository("MemberDao")
public class MemberDao extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception{
		List<Map<String, Object>> result = new ArrayList<Map<String, Object>>();
		String namespace = (String) map.get("namespace");
		String queryName = (String) map.get("queryName");

		try {
			result = selectList(namespace + "." + queryName, map);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
		return result;
	}
}
