<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% 
 	   request.setCharacterEncoding("UTF-8");  // 한글 꺠짐 방지
 	   String eng = request.getParameter("eng");
 	   String han = request.getParameter("han");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - request</title>
</head>
<body>
			<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
			<ul>
				<li><%=eng %></li>
				<li><%=han %></li>
				<li><%=request.getRequestURL() %></li>
				<li><%=request.getRequestURI() %></li>
				<li><%= request.getRealPath("/") %></li>
				<li><%=request.getQueryString() %></li>
			</ul>
</body>
</html>