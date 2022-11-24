<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

스크립트 세가지 형식
<br>

<%-- 1. <%!  %>  : 변수나 메소드 정의  //선언문,전역변수(인스턴스변수) --%>

<%! int sum = 0;
	   public int add(int x, int y){
		   sum = x + y;
		   return sum;   }
%>

           
<%-- 2. <%  %> : 변수나 실행문 정의(메소드 정의 불가) //스크립틀릿,지역변수 --%>

<% int result = add(10,20); 
%>
			
<%-- 3. <%= %> : 자바의 결과 출력 //표현식 --%>

<%= result %>
<br>
<%= add(50,60) %>
			
</body>
</html>
    
