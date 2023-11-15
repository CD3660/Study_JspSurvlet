package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex02")
public class Ex02_Req extends HttpServlet {
	RequestDispatcher rd;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("ex02 도착");
		String email = req.getParameter("email");
		String pw = req.getParameter("pw");
		if ("admin".equals(email) && "admin1234".equals(pw)) {
			rd = req.getRequestDispatcher("request/ex03req.jsp");
		} else {
			rd = req.getRequestDispatcher("request/ex02req.jsp");
		}
		
		ArrayList<String> list = new ArrayList<>();
		list.add("data1");
		list.add("data2");
		list.add("data3");
		list.add("data4");
		list.add("data5");
		
		req.setAttribute("list", list);
		
		rd.forward(req, resp);
	}
}
