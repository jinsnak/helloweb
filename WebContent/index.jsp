<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String height = request.getParameter("h");
	String weight = request.getParameter("w");
	String num = request.getParameter("n");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int no = Integer.parseInt(num);
		for (int i=0; i<no; i++){
	%>
		<h1>Hi~ JSP</h1>
	<%
		}
	%>
	<h4>신장 = <%=height %>cm, weight = <%=weight %> kg</h4>
</body>
</html>