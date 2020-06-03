<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
   String num = request.getParameter("num");
   String name = request.getParameter("name");
   String price = request.getParameter("price");
   
   //1개의 새션 list
   
   ArrayList<HashMap<String,String>>list = new ArrayList<>();
   
   if(session.getAttribute("items") != null){
	   list = (ArrayList<HashMap<String,String>>)session.getAttribute("items");
			  
   }
   
   boolean bool = true;
   if(!list.isEmpty()){ //list값이 비어있지않다면
	   for(HashMap<String,String> map : list){
		   if(map.get("num").equals(num)){//상품번호 기반으로 찾는다.
			   map.put("count",String.valueOf(Integer.parseInt(map.get("count"))+1));
		  		bool= false;
		  		break;
		   }
	   }
	   
   }
   if(bool){
	   HashMap<String,String> newMap = new HashMap<>(); //새 상품
	   
	   newMap.put("num",num);
	   newMap.put("name",name);
	   newMap.put("price",price);
	   newMap.put("count","1");
	   
	   list.add(newMap);
	   
   }
   
   session.setAttribute("items",list); //세션에 리스트를 추가
   
   
    %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style type = "text/css">
	
	</style>
</head>
<body>
	<div class ="center" align = "center" >
	<p><strong><%=name %></strong>이 추가되었습니다.</p>
	
	
	<h2><%=name %> 상품이 추가되었습니다.</h2>
	<a href="quiz02.jsp">계속 쇼핑하기</a>
	<a href="quiz04.jsp">장바구니 확인하기</a>
	
	
	</div>
</body>
</html>