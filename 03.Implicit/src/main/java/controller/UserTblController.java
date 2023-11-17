package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import usertbl.UserTblDAO;
import usertbl.UserTblDTO;

@WebServlet(name = "usertbl", urlPatterns = { "/list", "/detail", "/update", "/delete", "/newpage", "/insert" })
public class UserTblController extends HttpServlet {
	RequestDispatcher rd;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		UserTblDAO dao = new UserTblDAO();
		if ("/list".equals(req.getServletPath())) {
			req.setAttribute("list", dao.selectList());
			rd = req.getRequestDispatcher("usertbl/list.jsp");
		} else if ("/detail".equals(req.getServletPath())) {
			UserTblDTO dto = dao.selectOne(req.getParameter("name"));
			req.setAttribute("dto", dto);
			rd = req.getRequestDispatcher("usertbl/detail.jsp");
		} else if ("/update".equals(req.getServletPath())) {
			UserTblDTO dto = new UserTblDTO();
			dto.setUserName(req.getParameter("userName"));
			dto.setBirthYear(Integer.parseInt(req.getParameter("birthYear")));
			dto.setAddress(req.getParameter("address"));
			dto.setMobile(req.getParameter("mobile"));
			dao.update(dto);
			
			resp.sendRedirect("list");
			return;
		} else if ("/delete".equals(req.getServletPath())) {
			String userName = req.getParameter("userName");
			dao.delete(userName);
			resp.sendRedirect("list");
			return;
		} else if ("/newpage".equals(req.getServletPath())) {
			rd = req.getRequestDispatcher("usertbl/newpage.jsp");
		} else if ("/insert".equals(req.getServletPath())) {
			UserTblDTO dto = new UserTblDTO();
			dto.setUserName(req.getParameter("userName"));
			dto.setBirthYear(Integer.parseInt(req.getParameter("birthYear")));
			dto.setAddress(req.getParameter("address"));
			dto.setMobile(req.getParameter("mobile"));
			dao.insert(dto);
			
			resp.sendRedirect("list");
			return;
		}
		rd.forward(req, resp);
	}

}
