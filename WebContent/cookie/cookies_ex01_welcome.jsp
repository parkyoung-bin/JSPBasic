<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    Cookie[] cookies = request.getCookies();
    String id = "";
    
    if(cookies !=null){
    	for(Cookie c: cookies){
    		if(c.getName().equals("user_id")){
    			id=c.getValue();
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
	<%=id %> 님이 로그인중입니다...
</body>
</html>