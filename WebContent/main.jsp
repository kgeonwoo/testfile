<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	Cookie[] ck = request.getCookies();
	String username = "";
	
	for(Cookie c : ck){
		if(c.getValue().equals("김건우")){
			username = c.getValue();
		}
	}
%>
<body>
	<h2>안녕하세요 <%= username %> 님!</h2>
	
	<form method="post" action="logout.jsp">
		<input type="submit" value="로그아웃">
	</form>
	
</body>
</html>