<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request는 브라우저에 대한 정보, 사용자가 전달하는 값에 대한 많은 정보들이 담겨있음
	StringBuffer url = request.getRequestURL(); //URL 주소 확인이 가능
	
	String uri = request.getRequestURI(); //URI값 확인

	String path = request.getContextPath(); //컨택스트 경로

	String query = request.getQueryString(); //주소에 넘어오는 문자열 값
	
	String addr = request.getRemoteAddr(); //접속주소
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	URL주소 : <%=url%> <br>
	URI주소 : <%=uri%> <br>
	PATH주소 : <%=path%> <br>
	QUERY : <%=query %> <br>
	접속주소 : <%=addr %>
</body>
</html>