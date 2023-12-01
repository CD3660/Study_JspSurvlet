package hr;

import java.util.HashMap;
import java.util.List;

import common.MybatisConnection;

public class HrDAO extends MybatisConnection{
	
	public HrDAO() {
		super(DataResource.HR);
	}
	public void test(){
		int result = sql.selectOne("cu.test");
		System.out.println(result);
	}
	
	public List<HrVO> select(HashMap<String, String> map) {
		return sql.selectList("hr.select", map);
	}
	
}
