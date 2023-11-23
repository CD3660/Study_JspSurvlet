package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="customerController", urlPatterns = {"*.cu", "/"})
public class CustomerController extends HttpServlet {
	RequestDispatcher rd;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if (req.getServletPath().equals("/list.cu")) {
			rd = req.getRequestDispatcher("customer/list.jsp");
			rd.forward(req, resp);
		} else if (req.getServletPath().equals("/")) {
			rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		}
	}

}
