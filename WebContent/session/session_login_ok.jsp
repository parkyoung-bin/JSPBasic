<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    /* 
    	1.아이디, 비밀번호,nick을 받습니다.
    	2.아이디 비번이 동일하면 (user_id,id)의 세션생성
    	(user_nick,닉네임) 세션을 생성
    	
    	session_welcome으로 이동해서 화면에 id님 환영합니다 출력
    	틀린 경우 로그인 페이지로 리다이렉트
    	*/
    	request.setCharacterEncoding("utf-8");
    
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String nick = request.getParameter("nick");
    	
    	if(id.equals(pw)){
    		session.setAttribute("id",id);
        	
        	session.setAttribute("nick",nick);
        	response.sendRedirect("session_welcome.jsp");
        	
    	}else{
%>
	<script>
	/*
	HTML에서 스크립트의 사용은 script 태그를 씁니다.
	변수 : var a = 1;
	함수 : function 이름 (){
		
	}
	자바 스크립트 내장함수
	alert(); -경고장
	confirm(); -확인장
	history.go(-1); -뒤로가기
	location.href = "경로";
	*/
	name();
	function name(){
	alert("아이디 비번 확인하세요");
	location.href = "session_login.jsp";
		
	}
	
	</script> 
 
<%
    	
   	}
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