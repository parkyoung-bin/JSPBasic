<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 스크립트릿,선언자,표현식 적절히 사용 --%>
<%! int count = 1;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	int rn = (int)(Math.random()*9+1);
%>
<%=count %> 번째 방문자입니다. <br>
<% if (count % 10 == 0){ %> 
당첨되셨습니다!
<%} %>
<hr>
	<h3>랜덤 구구단 <%=rn %> 단 </h3>
<% for (int i=1;i<10;i++){%>
	<%=rn %> x  <%=i %> = <%=rn*i %> <br>
<% }%>
<% count ++; %>


</body>
</html>