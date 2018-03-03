package kr.co.dhflour.helloweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/join")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get방식인 경우 server.xml의 Connector 부분에 URIEncoding="utf-8"로 한다.(기본 setting)
		request.setCharacterEncoding("utf-8"); //post로 넘어올 때 한글이 깨지지 않도록 함.
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		String gender = request.getParameter("gender");
		String year = request.getParameter("year");
		String[] hobbies = request.getParameterValues("hobby");
		String selfIntro = request.getParameter("self_intro");
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.println(email);
		out.println(pwd);
		out.println(gender);
		out.println(year);
		if(hobbies != null) {
			for( String hobby : hobbies ) {
				out.println(hobby);
			}
		}
		out.println(selfIntro);
		//콘솔로도 출력가능하다 Debug
		System.out.println(email);
		System.out.println(selfIntro);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post방식으로 요청되었습니다.");
		doGet(request, response);
	}

}
