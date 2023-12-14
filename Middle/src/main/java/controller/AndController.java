package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("*.and")
public class AndController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("안드로이드 요청을 받음."+req.getParameter("andParam"));
		
		MiddleVO vo = new Gson().fromJson(req.getParameter("andParam"), MiddleVO.class);
		System.out.println(vo.getNum());
		System.out.println(vo.getStr());
		System.out.println(vo.isBool());
		
		
		resp.getWriter().println("응답 처리 :jsonData.....");
		
		
	}

}
