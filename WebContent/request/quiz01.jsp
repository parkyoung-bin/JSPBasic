<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
1. form태그를 이용해서 post형식으로 이름, 키와 몸무게를 입력받음
2. req_quiz_ok.jsp로 전송
3. 해당 페이지 에서는 넘어간 값을 BMI지수를 처리
4. BMI공식  = kg/(cm/100 * cm/100) -> 문자열이기 때문에 형변환 진행
화면에 이름 , 키 몸무게 bmi지수를 출력
if 을 통해 bmu  지수가 25 이상 과체중 18이하 저체중 나머지 정상 출력 --%>
<h3> MBI 측정</h3>
<form action = "req_quiz_ok.jsp" method = "post">
이름 :<input type = "text" name = "name"  size = "10"><br>
키 :<input type = "text" name = "height"  size = "10"><Br>
몸무게 : <input type = "text" name = "weight"  size = "10"><br>
<input type = "submit" value ="제출">
</form>

</body>
</html>