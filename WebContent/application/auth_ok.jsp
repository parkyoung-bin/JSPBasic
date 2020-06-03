<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String a = (String)session.getAttribute("auth");
    String code = request.getParameter("code");
    if(a.equals(code)){
    	session.setAttribute("authYN","y");
    	response.sendRedirect("reserve.jsp");%>
    <%}else{%>
    
    	<script>
    	name()
    	function name(){
    	alert("다시입력하세요");
    	location.href="auth.jsp";
    	
    	}
    	
    	</script>
    	
    
    <%}%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2></h2>
</body>
</html>