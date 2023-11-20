package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="controller", urlPatterns = {"*.te", "*.cd"})
public class Control extends HttpServlet {
	RequestDispatcher rd;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		if (req.getServletPath().equals("/list.te")) {
			rd = req.getRequestDispatcher("test/list.jsp");
			req.setAttribute("data", "servletdata");
			req.setAttribute("data2", 123);
		} else if (req.getServletPath().equals("/new.te")) {
			rd = req.getRequestDispatcher("test/new.jsp");
		} else if (req.getServletPath().equals("/insert.te")) {
			rd = req.getRequestDispatcher("test/update.jsp");
			req.setAttribute("id", req.getParameter("id"));
			req.setAttribute("pw", req.getParameter("pw"));
		} else if (req.getServletPath().equals("/delete.te")) {
//			rd = req.getRequestDispatcher("test/.jsp");
//			req.setAttribute("deleteid", req.getParameter("deleteid"));
			resp.sendRedirect("list.te");
			return;
		} else if (req.getServletPath().equals("/list.cd")) {
			rd = req.getRequestDispatcher("cd/list.jsp");
		} else if (req.getServletPath().equals("/insert.cd")) {
			rd = req.getRequestDispatcher("cd/insert.jsp");
			System.out.println(req.getParameter("a"));
			System.out.println(req.getParameter("b"));
			req.setAttribute("a", req.getParameter("a")+"1");
			req.setAttribute("b", req.getParameter("b")+"1");
		} else if (req.getServletPath().equals("/insertnew.cd")) {
			rd = req.getRequestDispatcher("cd/insert.jsp");
			
		} else {
			resp.getWriter().println("오류");
		}
		rd.forward(req, resp);
	}

}
