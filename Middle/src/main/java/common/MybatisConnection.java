package common;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class MybatisConnection {
	protected SqlSession sql;
	
	public enum Connection{
		CONNECTION,
		DISCONNECTION,
		ING
	}
	
	public enum DataResource{
		HANUL("common/hanulconfig.xml"),
		HR("common/hrconfig.xml"),
		SG("common/sgconfig.xml");
		private final String config;
		private DataResource(String config) {
			this.config = config;
		}
		public String getConfig() {
			return config;
		}
		
	}
	
	public MybatisConnection(DataResource res) {
		String resource = res.getConfig();
		
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			sql = sqlSessionFactory.openSession(true);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}	
}
