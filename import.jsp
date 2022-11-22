<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ page import="java.text.SimpleDateFormat" %>      <%--필요한 외부 클래스 임포르 불러오기 --%>
<%@ page import="java.util.Date" %>

<%--   <%  %> : 외부 클래스 생성<body>안에도 사용가능    --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 	Date today = new Date();
 	int hour = today.getHours();
// 	out.print(hour);

	SimpleDateFormat sf = new SimpleDateFormat("yyyy-mm-dd");
	out.print(sf.format(today));
%>

</body>
</html>