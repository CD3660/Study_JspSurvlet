package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.MybatisTblVO;

@WebServlet("*.mytbl")
public class MybatisTblController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		MybatisTblDAO dao = new MybatisTblDAO();
		MybatisTblVO vo = new MybatisTblVO();
		if(path.equals("/insert.mytbl")) {
			dao.insert(vo);
		} else if(path.equals("/update.mytbl")) {
			dao.update(vo);
		} else if(path.equals("/delete.mytbl")) {
			dao.delete(vo);
		} else if(path.equals("/select.mytbl")) {
			dao.select(vo);
		}
	}

}
