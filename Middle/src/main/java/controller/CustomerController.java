package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import customer.CustomerDAO;
import customer.CustomerVO;

@WebServlet("*.cu")
public class CustomerController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath().replace("/", "");
		if(path.equals("customer.cu")) {
			
			
			List<CustomerVO> list = new CustomerDAO().customerList(req.getParameter("query"));
			resp.getWriter().println(new Gson().toJson(list));
		} else if(path.equals("delete.cu")) {
			
			int result = new CustomerDAO().delete(Integer.parseInt(req.getParameter("customer_id")));
			resp.getWriter().println(new Gson().toJson(result));
		} else if(path.equals("update.cu")) {
			System.out.println("업데이트");
			int result = new CustomerDAO().update(new Gson().fromJson(req.getParameter("customerVO"), CustomerVO.class));
			resp.getWriter().println(new Gson().toJson(result));
		}
	}
}
