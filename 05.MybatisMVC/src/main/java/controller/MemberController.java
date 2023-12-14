package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberDAO_Id;
import member.MemberService;
import member.MemberVO;

@WebServlet("*.me")
public class MemberController extends HttpServlet {
	RequestDispatcher rd;
	MemberService service;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		if (path.equals("/loginpage.me")) {
			rd = req.getRequestDispatcher("member/login.jsp");
			rd.forward(req, resp);
		} else if (path.equals("/login.me")) {
			service = new MemberDAO();
			MemberVO vo = new MemberVO();
			vo.setUser_id(req.getParameter("user_id"));
			vo.setUser_pw(req.getParameter("user_pw"));

			vo = service.member_login(vo);
			if (vo == null) {
				resp.getWriter().print("로그인 실패");
			} else {
				req.getSession().setAttribute("loginInfo", vo);
				resp.getWriter().print("로그인 성공 " + vo.getName() + "님");
			}
		} else if (path.equals("/logout.me")) {
			req.getSession().removeAttribute("loginInfo");
			resp.sendRedirect("/mvc");
		} else if (path.equals("/joinpage.me")) {
			rd = req.getRequestDispatcher("member/join.jsp");
			rd.forward(req, resp);
		} else if (path.equals("/join.me")) {
			MemberVO vo = new MemberVO();
			vo.setUser_id(req.getParameter("user_id"));
			vo.setUser_pw(req.getParameter("user_pw"));
			vo.setName(req.getParameter("name"));
			vo.setEmail(req.getParameter("email"));
			vo.setBirth(req.getParameter("birth"));
			vo.setAddress(req.getParameter("address"));
			vo.setPhone(req.getParameter("phone"));
			vo.setPost(req.getParameter("post"));
			service = new MemberDAO();
			System.out.println(service.member_join(vo));

		} else if (path.equals("/idCheck.me")) {
			service = new MemberDAO_Id();
			resp.getWriter().print(service.member_idCheck(req.getParameter("user_id")));
		}
	}
}
