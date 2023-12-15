package customer;

import java.util.List;

import common.MybatisConnection;

public class CustomerDAO extends MybatisConnection {

	public CustomerDAO() {
		super(DataResource.HANUL);
	}
	public List<CustomerVO> customerList(String query) {
		List<CustomerVO> list = sql.selectList("cu.customer", query);
		return list;
	}
	public int delete(int customer_id) {
		return sql.delete("cu.delete", customer_id);
	}
	public int update(CustomerVO vo) {
		return sql.update("cu.update", vo);
	}

}
