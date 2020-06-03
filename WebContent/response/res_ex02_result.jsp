<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	/*
	1. id,pw 받아서 처리
	2. id가 abc1234이고 비밀번호가 asd123이라면 로그인 성공으로 간주하고 res_ex02_welcom.jsp 리다이렉트
	3. id가 틀리면 res_ex02_id_fail 페이지로 리다이렉트, pw 가 틀리면 res_ex02_pw_fail페이지로 리다이렉트
	*/
if(id.equals("abc1234")){
	if(pw.equals("asd123")){
	response.sendRedirect("res_ex02_welcome.jsp");
	}else{
		response.sendRedirect("res_ex02_pw_fail.jsp");
	}
}else{
	response.sendRedirect("res_ex02_id_fail.jsp");
}	

%>