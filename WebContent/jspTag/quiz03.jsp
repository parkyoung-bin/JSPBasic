<%@page import="java.util.Random"%>
<%@page import="javax.el.ListELResolver"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%! ArrayList<String> list = new ArrayList<>();
	Random ran = new Random();
	String[] arr = {"어피치","프로도","무지","콘","네오","튜브","라이언","제이지"};
	%>
	
<% 
 
	int num = ran.nextInt(8);
	String choose = arr[num];
	list.add(choose);
	
	int count = 0;
	for(String e : list ){
		if(e.equals(choose)){
			count++;
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
[<%=choose %>] 님이 입장하셨습니다
현재 같은 카카오 프렌즈는 <%=count %>명 입니다.

<h3>현재 구성정보</h3>

<%=list.toString() %> (<%=list.size() %>명 참가중)

<% if(list.size()==10){ %>
<% list.clear();
} %>


</body>
</html>