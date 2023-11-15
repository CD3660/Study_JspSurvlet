package implicit;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex01_Request")
public class Ex01_Request extends HttpServlet {
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서버 도메인명 : "+request.getServerName());
		System.out.println("서버 포트번호 : "+request.getServerPort());
		System.out.println("요청정보 : "+request.getServletPath());
		System.out.println("요청정보(URL) : "+request.getRequestURL());
		System.out.println("요청정보(URI) : "+request.getRequestURI());
		System.out.println("요청정보(Method) : "+request.getMethod());
		
		RequestDispatcher rd = request.getRequestDispatcher("02.directive/Ex03_Main.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
