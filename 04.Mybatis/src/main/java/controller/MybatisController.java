package controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mybatis.MybatisVO;

@WebServlet("*.my")
public class MybatisController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String resource = "mybatis/config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		
		SqlSession sql = sqlSessionFactory.openSession(true);// Connection 객체를 이용해서 동작하는걸 대신 해준다.
		String path = req.getServletPath();
		if (path.equals("/select1.my")) {
			int result = sql.selectOne("testmapper.select1");
			System.out.println(result);
		} else if (path.equals("/select2.my")) {
			String result = sql.selectOne("testmapper.select2");
			System.out.println(result);
		} else if (path.equals("/selectVO.my")) {
			MybatisVO vo = sql.selectOne("testmapper.selectVO");
			System.out.println(vo.getParam1() + " : " + vo.getParam2());
		} else if (path.equals("/selectVOList.my")) {
			List<MybatisVO> list = sql.selectList("testmapper.selectVOList");
			System.out.println(list.size());
			System.out.println(list.get(0).getParam1() + " : " + list.get(0).getParam2());
			System.out.println(list.get(1).getParam1() + " : " + list.get(1).getParam2());
		} else if (path.equals("/param1.my")) {
			String param = "CD";
			String str = sql.selectOne("testmapper.param1", param);
			System.out.println(str);
		} else if (path.equals("/param2.my")) {
			int param = 10;
			int result = sql.selectOne("testmapper.param2", param);
			System.out.println(result);
		} else if (path.equals("/params.my")) {
			MybatisVO vo = new MybatisVO();
			vo.setParam1("abc");
			vo.setParam2("def");
			MybatisVO voRtn = sql.selectOne("testmapper.params", vo);
			System.out.println(voRtn.getParam1());
			System.out.println(voRtn.getParam2());
		} else if (path.equals("/parammap.my")) {
			HashMap<String, String> hm = new HashMap<>();
			hm.put("param1", "abc");
			hm.put("param2", "def");
			MybatisVO voRtn = sql.selectOne("testmapper.params", hm);
			System.out.println(voRtn.getParam1());
			System.out.println(voRtn.getParam2());
		} else if (path.equals("/insert.my")) {
			HashMap<String, String> hm = new HashMap<>();
			hm.put("param1", "abc");
			hm.put("param2", "def");
			int result = sql.insert("testmapper.insert", hm);
			System.out.println(result);
		} else if (path.equals("/update.my")) {
			int result = sql.update("testmapper.update");
			System.out.println(result);
		} else if (path.equals("/delete.my")) {
			int result = sql.delete("testmapper.delete");
			System.out.println(result);
		} 
		RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
		rd.forward(req, resp);


	}

}
