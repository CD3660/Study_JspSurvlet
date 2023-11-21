package controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mybatis.MybatisTblVO;

public class MybatisTblDAO {
	private static SqlSession sql;
	static {
		System.out.println("싱글톤");
		String resource = "mybatis/config.xml";
		InputStream inputStream;
		SqlSession sql;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			sql = sqlSessionFactory.openSession(true);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public int insert(MybatisTblVO vo) {
		int result = sql.insert(null, vo);
		return result;
	}
	public int update(MybatisTblVO vo) {
		int result = sql.update(null, vo);
		return result;
	}
	public int delete(MybatisTblVO vo) {
		int result = sql.delete(null, vo);
		return result;
	}
	public List<MybatisTblVO> select(MybatisTblVO vo) {
		List<MybatisTblVO> list = sql.selectList(null, vo);
		return list;
	}
	
}
