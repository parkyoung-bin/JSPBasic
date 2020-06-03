<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 /*
 앞에서 넘어온 폼값을 받아서 평균을 구한다
 평균이 60점 이상이면 score_quiz03으로 이동해서
 ~~님 평균은 xx점 합격입니다. 를 출력
 평균이 60점 이하면 score_quiz04으로 이동해서
 ~~님 평균은 xx점 불합격 입니다
 조건: 세션 사용 x
 */
 request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String korea = request.getParameter("kor");
String english = request.getParameter("eng");
String math = request.getParameter("math");

int kor = Integer.parseInt(korea);
int eng = Integer.parseInt(english);
int maths = Integer.parseInt(math);

double avg = (double)(kor+eng+maths)/3.0;
request.setAttribute("avg",avg);
request.setAttribute("name",name);


//request에 강제로 저장
if(avg>=60) {
	request.getRequestDispatcher("score_quiz03.jsp").forward(request,response);
} else if (avg<=60){
	request.getRequestDispatcher("score_quiz04.jsp").forward(request,response);
}%>