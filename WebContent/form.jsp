<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/helloweb/join">
		이메일    : 
		<input type="text" name="email" /> <!-- input과 같은 태그는 inline tag(옆으로 붙는다) -->
		<br />
		
		비밀번호 : 
		<input type="password" name="password" />
		<br />
		
		성별 : 
		남<input type="radio" name="gender" value="male"  checked="checked" /> 
		여<input type="radio" name="gender" value="female" />
		<br />
		
		생년 : 
		<select name="year">
			<option value="1984">1984년</option>
			<option value="1985">1985년</option>
			<option value="1986">1986년</option>
			<option value="1987">1987년</option>
		</select>
		<br />
		취미 :
		<input type="checkbox" name="hobby" value="reading" />독서
		<input type="checkbox" name="hobby" value="programming" />프로그래밍
		<input type="checkbox" name="hobby" value="swimming" />수영
		<input type="checkbox" name="hobby" value="sleeping" />잠자기
		<br />
		자기소개 : <br />
		<textarea rows="15" cols="50" name="self_intro" ></textarea>
		<br />
		<input type="submit" value="가입" />
	</form>
	
	<!-- head태그는 block tag(블럭이 쌓이는 것처럼 아래로 떨어진다) -->
	<h1>제목입니다.</h1>
	<h2>제목입니다.</h2>
	<h3>제목입니다.</h3>
	<h4>제목입니다.</h4>
	<h5>제목입니다.</h5>
	<h6>제목입니다.</h6>
	
	<a href="http://www.naver.com">네이버로 이동</a>
	<a href="/helloweb/hello.jsp" target="_blank">절대경로로 이동</a> <!-- 절대경로는 /부터 시작된다. http:// 이후 최초 /부터 시작된다고 생각하자 -->
	<a href="images/twice.jpg">상대경로로 이동</a> <!-- 상대경로는 해당 파일이 위치한 곳에서부터 시작. -->
</body>
</html>