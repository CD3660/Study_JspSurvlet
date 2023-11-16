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

@WebServlet(name = "usertbl", urlPatterns = { "/list", "/detail", "/update" })
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
			
			if(dao.updateOne(dto)) {
				System.out.println("성공");
			} else {
				System.out.println("실패");
			}
//			rd = req.getRequestDispatcher("usertbl/detail.jsp");
		}
		rd.forward(req, resp);
	}

}
