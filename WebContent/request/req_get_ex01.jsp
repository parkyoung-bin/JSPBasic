<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 사용자에게 값을 입력받을 때 form 태그를 이용 -->
	<!-- 받은 데이터를 지정된 페이지로 전송할 때 form 태그에 action 속성을 사용합니다. -->
	<form action ="req_get_ex02.jsp">
	<h3>회원가입 양식</h3>
	<hr>
	아이디 : <input type="text" size = "10" placeholder = "8글자" name = "id"><br/>
	비밀번호 : <input type = "password" size= "10" placeholder = "최소8글자" name ="pw"><br/>
		
	<!-- checkbox , radio 속성은 반드시 name속성을 통일 시켜서 하나의 그룹으로 묶습니다. -->
	
	 관심분야<br/>
	 <input type = "checkbox" name = "inter" value = "JAVA"> JAVA
	 <input type = "checkbox" name = "inter" value = "JSP"> JSP
	 <input type = "checkbox" name = "inter" value = "SPRING"> SPRING
	 <input type = "checkbox" name = "inter" value = "JAVAScript"> JavaScript		
	
	 <br/>
	 전공분야 :
	 <input type = "radio" name ="major" value = "경영">경영
	 <input type = "radio" name ="major" value = "컴퓨터공학">컴퓨터공학
	 <input type = "radio" name ="major" value = "수학">수학
	 <input type = "radio" name ="major" value = "기계공학">기계공학
	
	<br/>
	지역
	<select name = "region">
	<option value="서울">서울시</option>
	<option value="경기">경기도</option>
	<option value="인천">고양시</option>
	<option value="부산">부산시</option>
	</select>
	
	
	<br/>
	자기소개<br/>
	<textarea rows="5" cols="50" name ="intro"></textarea> <br>
	<!-- 이름, 닉네임을 추가해서 ex02에서 받아서 출력. -->
	
	이름<input type = "text" name = "name"><br>
	닉네임<input type = "text" name = "nick"><br>
	<input type = "submit" value ="확인">
	</form>

</body>
</html>