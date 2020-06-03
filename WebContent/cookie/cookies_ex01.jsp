<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	String ch = "";
	
	if(cookies != null){
		for(Cookie c:cookies){
			if(c.getName().equals("idCheck")){
				ch = c.getValue();
			}
		}
	}
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>쿠키연습</h2>
<form action="cookie_ex01_ok.jsp" method = "post">


아이디:<input type = "text" name ="id" size = "10" value=<%=ch%>><br>
비밀번호 :<input type = "password" name="pw" size ="10"><br>
		<input type = "submit" value="로그인">
		<input type = "checkbox" name="idCheck" value="y">아이디기억하기
</form>



</body>
</html>