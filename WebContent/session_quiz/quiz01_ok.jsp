<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    String id =request.getParameter("id");
    String pw =request.getParameter("pw");
  	
    if(id.equals("admin")&pw.equals("1234")){
    	session.setAttribute("id", id);
    	session.setAttribute("pw", pw);
    	response.sendRedirect("quiz02.jsp");
   %> 	
    <% }else{%>
    
    	<script>
    	name();
    	function name(){
    	alert("아이디 비번 확인하세요");
    	location.href = "quiz01.jsp";
    		
    	}
    	</script>

    <%} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>