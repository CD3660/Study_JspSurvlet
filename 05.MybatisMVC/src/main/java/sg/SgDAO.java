package sg;

import java.util.List;

import common.MybatisConnection;

public class SgDAO extends MybatisConnection{
	
	public SgDAO() {
		super(DataResource.SG);
	}
	public List<SgVO> select() {
		return sql.selectList("sg.select");
	}
	public List<SgVO> selectD() {
		return sql.selectList("sg.selectD");
	}
	public int delete(int customer_id) {
		return sql.delete("sg.delete", customer_id);
	}
	public void insert(SgVO vo) {
		sql.insert("sg.insert",vo);
	}
	public void update(SgVO vo) {
		sql.update("sg.update",vo);
	}
	
}
