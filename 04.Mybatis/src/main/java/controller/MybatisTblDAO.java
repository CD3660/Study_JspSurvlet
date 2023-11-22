package controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
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
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			sql = sqlSessionFactory.openSession(true);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public int insert(MybatisTblVO vo) {
		int result = sql.insert("mymapper.insert", vo);
		return result;
	}
	public int update(MybatisTblVO vo) {
		int result = sql.update("mymapper.update", vo);
		return result;
	}
	public int delete(MybatisTblVO vo) {
		int result = sql.delete("mymapper.delete", vo);
		return result;
	}
	public List<MybatisTblVO> select() {
		List<MybatisTblVO> list = sql.selectList("mymapper.select");
		return list;
	}
	
}
