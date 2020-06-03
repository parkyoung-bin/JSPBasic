<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

<%for(int i=1;i<=30;i++){%>
<a href="quiz03.jsp?name=<%=i%>" ><%= i %> 번 학생</a><br>
<%} %>

</body>


</html>
