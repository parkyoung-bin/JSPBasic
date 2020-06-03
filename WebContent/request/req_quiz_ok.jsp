<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String he = request.getParameter("height");
    String we = request.getParameter("weight");
    double height = Double.parseDouble(he);
    double weight = Double.parseDouble(we);
    double mbi = weight / ((height/100) * (height/100));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름	: <%=name %> <br>
	키 : <%=he %><br>
	몸무게 : <%=we %><br>
	MBI : <%= mbi  %>
	<% if(mbi >=25){ %>
	과체중
	<%} else if(mbi<=18){%>
	저체중
	<%}else { %>
	정상
	<%} %>
	
</body>
</html>