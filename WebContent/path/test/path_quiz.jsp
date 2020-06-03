<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- a태그를 이용해서 req_video 페이지로 상대경로, 절대경로 -->
<a href="../../request/req_video.jsp">req_video상대경로</a>
<a href="/JSPBasic/request/req_video.jsp">req_video절대경로</a>


<!-- a태그를 이용해서 TestServlet 으로 상대경로, 절대경로  -->

<a href="../../servlet/testServlet.jsp">testservlet상대경로</a>
<a href="/JSPBasic/servlet/testServlet.jsp">testservlet절대경로</a>
<!-- img태그를 이용해서 java.png참조 -->
<img src="../../request/img/java.png">

</body>
</html>