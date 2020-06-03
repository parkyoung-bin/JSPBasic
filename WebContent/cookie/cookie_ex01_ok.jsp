<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String idcheck = request.getParameter("idCheck");
    
    
    if(id.equals("abc") && pw.equals("1234")){
    	
    if(idcheck != null){
    Cookie check = new Cookie("idCheck",id);
    check.setMaxAge(30);
    response.addCookie(check);
    }
    
    Cookie idCookie = new Cookie("user_id",id);
    idCookie.setMaxAge(30);
    response.addCookie(idCookie);
    
    response.sendRedirect("cookies_ex01_welcome.jsp");
    
   	}else{
   		
   		response.sendRedirect("cookies_ex01.jsp");
   	}
    
    /*
    1. id=abc이고 pw=1234라면 로그인 성공이라고 간주하고(user_id,id) 쿠키생성
    2. 아이디나 비밀번호가 틀렸으면 다시 로그인 페이지로 리다이렉트
    3. 로그인 성공시 cookie_ex01_welcome 으로 리다이렉트해서 화면에 "id님 로그인 중입니다."출력
    */
    
    
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>