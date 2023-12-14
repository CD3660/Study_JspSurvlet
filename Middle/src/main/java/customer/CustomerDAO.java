package customer;

import java.util.List;

import common.MybatisConnection;

public class CustomerDAO extends MybatisConnection {

	public CustomerDAO() {
		super(DataResource.HANUL);
	}
	public List<CustomerDTO> selectList() {
		List<CustomerDTO> list = sql.selectList("cu.customer");
		return list;
	}

}
