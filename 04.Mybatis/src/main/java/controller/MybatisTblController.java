package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.MybatisTblVO;

@WebServlet("*.mytbl")
public class MybatisTblController extends HttpServlet {
	RequestDispatcher rd;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		MybatisTblDAO dao = new MybatisTblDAO();
		MybatisTblVO vo = new MybatisTblVO();
		if (path.equals("/insert.mytbl")) {
			vo.setCol1(req.getParameter("col1"));
			vo.setCol2(req.getParameter("col2"));
			vo.setCol3(req.getParameter("col3"));
			dao.insert(vo);
			resp.sendRedirect("home.mytbl");
			return;
		} else if (path.equals("/update.mytbl")) {
			vo.setCol1(req.getParameter("col1"));
			vo.setCol2(req.getParameter("col2"));
			vo.setCol3(req.getParameter("col3"));
			dao.update(vo);
			resp.sendRedirect("home.mytbl");
			return;
		} else if (path.equals("/delete.mytbl")) {
			vo.setCol1(req.getParameter("col1"));
			vo.setCol2(req.getParameter("col2"));
			vo.setCol3(req.getParameter("col3"));
			dao.delete(vo);
			resp.sendRedirect("home.mytbl");
			return;
			
		} else if (path.equals("/select.mytbl")) {
			List<MybatisTblVO> list = dao.select();
			req.setAttribute("list", list);
			rd = req.getRequestDispatcher("mybatis/select.jsp");
			
		} else if (path.equals("/home.mytbl")) {
			rd = req.getRequestDispatcher("mybatis/myhome.jsp");
		}
		rd.forward(req, resp);
		
		
	}

}
