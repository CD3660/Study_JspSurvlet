package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sg.SgDAO;
import sg.SgVO;

@WebServlet("*.sg")
public class SgController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestDispatcher rd;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String path = req.getServletPath().replace("/", "");
		SgDAO dao = new SgDAO();
		if (path.equals("list.sg")) {
			rd = req.getRequestDispatcher("single/list.jsp");
			req.setAttribute("list", dao.select());
			req.setAttribute("dList", dao.selectD());
			rd.forward(req, resp);
		} else if (path.equals("insert.sg")) {
			SgVO vo = new SgVO();
			vo.setFirst_name(req.getParameter("first_name"));
			vo.setLast_name(req.getParameter("last_name"));
			vo.setEmail(req.getParameter("email"));
			vo.setPhone_number(req.getParameter("phone_number"));
			vo.setHire_date(req.getParameter("hire_date"));
			vo.setSalary(salary(req.getParameter("salary")));
			vo.setDepartment_id(getInt(req.getParameter("department_id")));
			dao.insert(vo);
			resp.sendRedirect("list.sg");
			return;
		} else if (path.equals("update.sg")) {
			SgVO vo = new SgVO();
			vo.setFirst_name(req.getParameter("first_name"));
			vo.setLast_name(req.getParameter("last_name"));
			vo.setEmail(req.getParameter("email"));
			vo.setPhone_number(req.getParameter("phone_number"));
			vo.setHire_date(req.getParameter("hire_date"));
			vo.setEmployee_id(getInt(req.getParameter("employee_id")));
			vo.setSalary(salary(req.getParameter("salary")));
			vo.setDepartment_id(getInt(req.getParameter("department_id")));
			dao.update(vo);
			resp.sendRedirect("list.sg");
			return;
		} else if (path.equals("delete.sg")) {
			int employee_id = getInt(req.getParameter("employee_id"));
			dao.delete(employee_id);
			resp.sendRedirect("list.sg");
			return;
		}
	}

	public int salary(String number) {
		try {
			int result = Integer.parseInt(number);
			if (result >= 0) {
				return result;
			}
		} catch (Exception e) {
		}
		return 0;
	}

	public int getInt(String number) {
		try {
			int result = Integer.parseInt(number);
			return result;
		} catch (Exception e) {
		}
		return 0;
	}
}
