<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
   //서블릿에서 넘어온 name 값
   String name = (String)request.getAttribute("id");
   
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>forward_ex04페이지</h2>
	forward로 넘어온값  <%=name %>
</body>
</html>