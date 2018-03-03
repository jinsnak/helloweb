package kr.co.dhflour.helloweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String height = request.getParameter("h");
		String weight = request.getParameter("w");
		String num = request.getParameter("n");
		
		PrintWriter out = response.getWriter();
		
		response.setContentType("text/html; charset=utf-8");
		out.println("<h1>Hi~Servlet</h1>");
		out.println("<h4>" + height + "</h4>");
		out.println("<h4>" + weight + "</h4>");
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
