package customer;

import java.util.List;

import common.MybatisConnection;

public class CustomerDAO extends MybatisConnection{
	
	public CustomerDAO() {
		super(DataResource.HANUL);
	}
	public void test(){
		int result = sql.selectOne("cu.test");
		System.out.println(result);
	}
	public List<CustomerVO> select() {
		return sql.selectList("cu.select");
	}
	public int delete(int customer_id) {
		return sql.delete("cu.delete", customer_id);
	}
	public void insert(CustomerVO vo) {
		sql.insert("cu.insert",vo);
	}
	public void update(CustomerVO vo) {
		sql.update("cu.update",vo);
	}
}
