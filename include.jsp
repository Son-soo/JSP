<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="includefile.jsp" %>   <%--다른 JSP 파일(includefile.jsp) 포함--%>

<% //http://localhost:8081/FirstJsp/ => 절대경로 
	  //page , include , taglib  => 3대 지시어
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
out.println("오늘 날짜 : " + today);
out.println("<br/>");                                   //includefile.jsp에서 선언한 변수 사용
out.println("내일 날짜 : " + tomorrow);
%>
</body>
</html>
