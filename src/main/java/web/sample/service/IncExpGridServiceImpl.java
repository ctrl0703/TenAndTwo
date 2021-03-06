package web.sample.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import web.sample.dao.IncExpDao;

@Service("IncExpGridServiceImpl")
public class IncExpGridServiceImpl implements GridService {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="IncExpDao")
	private IncExpDao incExpDao;
	
	@Override
	public List<Map<String, Object>> selectGridList(Map<String, Object> map) throws Exception {
		return incExpDao.selectIncExpGrid(map);
	}

	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception {
		return incExpDao.selectList(map);
	}

}
