<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

    /*
	세션에 저장된 값은 브라우저가 종료되기 전까지, 또는 기본 30분 유지되고
	어느 페이지에서나 사용할 수 있습니다.
	getAttribute("변수명") 을 사용합니다.
	*/
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
	
	
	//세션 유지시간
	int time = session.getMaxInactiveInterval();
	
	//특정 세션 삭제
	session.removeAttribute("user_name");
	
	//모든세션 삭제
	session.invalidate();
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	id : <%=id %><br>
	name : <%=name %>
	time : <%=time %>
</body>
</html>