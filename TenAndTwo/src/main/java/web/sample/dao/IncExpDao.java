package web.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import web.common.dao.AbstractDAO;

@Repository("IncExpDao")
public class IncExpDao extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectIncExp(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("IncExp.selectList", map);
	}
}
