package test;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import controller.MybatisTblDAO;
import mybatis.MybatisTblVO;

class MybatisTblDAOtest {

	@Disabled
	@Test
	void select() {
		MybatisTblDAO dao = new MybatisTblDAO();
		List<MybatisTblVO> list = dao.select();
		assertEquals(list.get(0).getCol1(), "abc");
	}

	@Disabled
	@Test
	void insert() {
		MybatisTblDAO dao = new MybatisTblDAO();
		MybatisTblVO vo = new MybatisTblVO();
		vo.setCol1("col1");
		vo.setCol2("col2");
		vo.setCol3("col3");
		int result = dao.insert(vo);
		assertEquals(result, 1);
	}
	
	@Disabled
	@Test
	void update() {
		MybatisTblDAO dao = new MybatisTblDAO();
		MybatisTblVO vo = new MybatisTblVO();
		vo.setCol1("col1");
		vo.setCol2("col2");
		vo.setCol3("col3");
		int result = dao.update(vo);
		assertEquals(result, 1);
	}
	
	@Disabled
	@Test
	void delete() {
		MybatisTblDAO dao = new MybatisTblDAO();
		MybatisTblVO vo = new MybatisTblVO();
		vo.setCol1("col1");
		vo.setCol2("col2");
		vo.setCol3("col3");
		int result = dao.delete(vo);
		assertEquals(result, 1);
	}


}
