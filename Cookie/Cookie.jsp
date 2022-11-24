<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie</title>
</head>
<body>
	<h2>1. 쿠키 설정</h2>
	<%
		//1. 쿠키객체를 생성 한다.
		Cookie cookie = new Cookie("myCookie" , "쿠키맛");
		//2. 쿠키의 생성 경로를 컨텍스트 루트로 설정 한다.
		cookie.setPath(request.getContextPath());
		//3. 유지기간을 설정 한다.
		cookie.setMaxAge(3600);
		//4. 응답 헤더에 쿠키를 추가 한다.
		response.addCookie(cookie);
	%>
	
	<h2>2. 쿠키 설정 직후 쿠키값 확인하기</h2>
	<%
		//1. 요청 헤더의 모든 쿠키 얻기
		Cookie[] cookies = request.getCookies();
		//2. 쿠키 정보가 있는지 확인
		if (cookies != null) {
		//3. 쿠키가 있다면 값 얻기	
			for (Cookie c : cookies){
				String cookieName = c.getName();
				String cookieValue = c.getValue();
		//4. 화면에 출력
				out.println(String.format("%s : %s<br/>", cookieName, cookieValue));
			}
		}else{
			out.print("쿠키 정보가 없습니다.");
		}
		
	%>
		<h2>3. 페이지 이동 후 쿠키값 확인하기</h2>
		<a href = "CookieResult.jsp">
			다읍 페이지에서 쿠키값 확인
		</a>

</body>
</html>
