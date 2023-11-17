package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import usertbl.usertbl2DAO;
import usertbl.usertbl2DTO;

@WebServlet(name = "controller", urlPatterns = { "/list", "/insert", "/doinsert", "/update", "/doupdate", "/delete" })
public class Controller extends HttpServlet {
	RequestDispatcher rd;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		usertbl2DAO dao = new usertbl2DAO();

		if ("/list".equals(req.getServletPath())) {
			req.setAttribute("list", dao.selectList());
			rd = req.getRequestDispatcher("cd/list.jsp");
		} else if ("/insert".equals(req.getServletPath())) {
			rd = req.getRequestDispatcher("cd/insert.jsp");
		} else if ("/doinsert".equals(req.getServletPath())) {
			usertbl2DTO dto = new usertbl2DTO();
			dto.setUserNo(Integer.parseInt(req.getParameter("userNo")));
			dto.setUserName(req.getParameter("userName"));
			dto.setBirthday(Integer.parseInt(req.getParameter("birthday")));
			dto.setBloodType(req.getParameter("bloodType"));
			if (dao.insert(dto)) {
				System.out.println("성공");
			} else {
				System.out.println("실패");
			}
			resp.sendRedirect("list");
			return;
		} else if ("/update".equals(req.getServletPath())) {
			req.setAttribute("dto", dao.selectOne(Integer.parseInt(req.getParameter("userNo"))));
			rd = req.getRequestDispatcher("cd/update.jsp");
		} else if ("/doupdate".equals(req.getServletPath())) {
			usertbl2DTO dto = new usertbl2DTO();
			dto.setUserNo(Integer.parseInt(req.getParameter("userNo")));
			dto.setUserName(req.getParameter("userName"));
			dto.setBirthday(Integer.parseInt(req.getParameter("birthday")));
			dto.setBloodType(req.getParameter("bloodType"));
			if (dao.update(dto)) {
				System.out.println("성공");
			} else {
				System.out.println("실패");
			}
			resp.sendRedirect("list");
			return;
		} else if ("/delete".equals(req.getServletPath())) {
			usertbl2DTO dto = new usertbl2DTO();
			if (dao.delete(Integer.parseInt(req.getParameter("userNo")))) {
				System.out.println("성공");
			} else {
				System.out.println("실패");
			}
			resp.sendRedirect("list");
			return;
		}

		rd.forward(req, resp);
	}

}
