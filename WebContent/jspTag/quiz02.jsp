<%@page import="java.util.Random"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 정수를 저장하는 List선언
	2. 1~45까지 로또 번호 생성 하고 리스트 추가
	3. 중복되지 않은 숫자가 6개의 로번또호를 저장하면 됩니다.
	4. 화면에 출력
	5. 같은 방법으로 set 이용해서도 처리
	*/
	Random ran = new Random();
	ArrayList<Integer> list =new ArrayList<>();
	
	
	while(list.size()<6){
		int num = ran.nextInt(45)+1;
		if(! list.contains(num)){
			list.add(num);
		}
	}
	HashSet<Integer> set = new HashSet<>();
	while(set.size()<6){
		set.add(ran.nextInt(45)+1);
	}
	
	
%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
랜덤 번호 : <%= list.toString()%>

랜덤 셋 번호<%= set.toString() %>


</body>
</html>