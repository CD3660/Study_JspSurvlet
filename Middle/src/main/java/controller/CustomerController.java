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
import customer.CustomerDTO;

@WebServlet("*.cu")
public class CustomerController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath().replace("/", "");
		if(path.equals("customer.cu")) {
			
			
			List<CustomerDTO> list = new CustomerDAO().selectList();
			resp.getWriter().println(new Gson().toJson(list));
		}
	}
}
