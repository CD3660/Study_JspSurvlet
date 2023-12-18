package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import member.MemberDAO;
import member.MemberVO;

@WebServlet("*.me")
public class MemberController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath().replace("/", "");
		if(path.equals("login.me")) {
			MemberVO vo = new MemberVO();
			vo.setUser_id(req.getParameter("user_id"));
			if("y".equals(req.getParameter("social"))) {
				vo.setSocial(req.getParameter("social"));
				
				
			} else {
				vo.setUser_pw(req.getParameter("user_pw"));
			}
			MemberDAO dao = new MemberDAO();
			vo = dao.login(vo);
			if(vo == null) {
			} else {
				String json = new Gson().toJson(vo);
				resp.getWriter().println(json);
			}
		}
	}
}
