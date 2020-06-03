<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   List<String> list = new ArrayList<>();
   
  	if(application.getAttribute("list") !=null){
  		
  		list = (List<String>)application.getAttribute("list");
  	}
   
   
   
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

118.130.22.189

<div align = "center">

<form action ="reserve_ok.jsp" method = "post">

<h3>영화 좌석 예약</h3>
<h2>예약할 좌석을 체크한 후에 예약 버튼을 클릭하세요</h2>
<hr>
<h2>좌석배치도</h2>

<br> &nbsp;&nbsp;
<% for(char c = 'A'; c<='Z'; c++) {%>
	<small> <%=c %></small>&nbsp;&nbsp;
	<%} %>
<br>



<%for(int i = 1; i<=6;i++){%>
	<%=i%>
	<% for(char c='A'; c<='Z';c++){ %>
	<%if(list.contains(c +"-"+ i)) {%>
		<input type = "checkbox" name="seat" value="<%=c%>-<%=i%>"disabled >
		<%}else{%>
		<input type = "checkbox" name="seat" value="<%=c%>-<%=i%>">
		<% }%>
	<%} %>
	<%= i==3 ? "<br>":"" %>
	<br>
	<% } %>
	<br>
	<input type = "submit" value ="예약하기">
	<input type = "reset" value ="취소">

</form>

</div>

</body>
</html>
