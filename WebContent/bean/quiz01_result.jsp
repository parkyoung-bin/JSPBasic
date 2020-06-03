<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%Student s = (Student)request.getAttribute("student");
    request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

아이디:<%=s.getId() %>
비밀번호:<%=s.getPw() %>
이름:<%=s.getName() %>
주소:<%=s.getAddress() %>
국어:<%=s.getKor() %>
수학:<%=s.getMath() %>


총점 :<%=s.getSum() %>
평균 :<%=s.getAvg() %>


</body>
</html>