<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<% 
	String name = request.getParameter("name");
	
	
	%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(name == null){ %>
		잘못옮
		

	<%}else if(name.equals("java")){%>
	<div align = "center">
	<h2>강의 영상</h2>
	<hr> 
	<p> 자바 수업 소개 </p>
	<iframe width="1280" height="720" src="https://www.youtube.com/embed/SXX2cnmL0Ng?list=PLK7AWkPYwus5xddciHublVj-B8h18xj6V" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>	
	</div>
	
	<%}else if(name.equals("script")){ %>
	<div align = "center">
	<h2>강의영상</h2>
	<hr> 
	<p>자바 스크립트 소개</p>
	<iframe width="1280" height="720" src="https://www.youtube.com/embed/nOTpuof2YG8?list=PLK7AWkPYwus6SdPJyhK9SNnKJybIC5qCs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>	
	
	<%}else if(name.equals("oracle")){%>
	<div align = "center">
	<h2>강의 영상</h2>
	<hr> 
	<p> 오라클 수업 소개 </p>
	<iframe width="1280" height="720" src="https://www.youtube.com/embed/DEVR_R2Hva0?list=PLK7AWkPYwus5eaHdYaraU73uMDRX18STn" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	<%} %>



</body>
</html>