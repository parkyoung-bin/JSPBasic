<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //쿠키 확인 해보기
    //브라우저에 쿠키는 request 객체에 자동으로 넘어와서 저장됩니다.
    Cookie[] cookies = request.getCookies();
    
    //쿠키가 null이 아닐 때 반복문으로 쿠키를 하나씩 꺼냄
    if(cookies != null){
    	for(Cookie c : cookies){
    		
    		out.println(c.getName() + "<br>"); //쿠키이름을 꺼냄
    		out.println(c.getValue()+ "<br>");//쿠키 값을 꺼냄
    		
    		
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

<A href = "cookie_get01.jsp">특정 쿠키 사용하기</A>

</body>
</html>