<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
1. 폼태그를 처리할 수 있는 빈을 선언
2. 폼값을 받아서 평균과 총점을 구한다.
3. quiz01_result로 이동해서 학생 정보와 평균,총점 출력

--%>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String address = request.getParameter("address");
String kor = request.getParameter("kor");
String math = request.getParameter("math");

int kors = Integer.parseInt(kor);
int maths = Integer.parseInt(math);

int sum = kors+maths;
double avg = (double)( (kors+maths)/2 );

//객체 빈 생성
Student student = new Student(id,pw,name,address,kor,math,sum,avg);
request.setAttribute("student",student);
request.getRequestDispatcher("quiz01_result.jsp").forward(request, response);

%>

