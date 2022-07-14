<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String language = "korean";
	String cookie = request.getHeader("Cookie"); 	
	
	if(cookie != null){
		Cookie cookies[] = request.getCookies();
		
		for(int i = 0; i < cookies.length; i++){
			if(cookies[i].getName().equals("language")){
				language = cookies[i].getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
	text-align:center;
}
div {
	margin: 30px;
}
</style>
<body>
	<% if(language.equals("korean")){%>
		<h2>씨발</h2>
	<%}else if(language.equals("english")){ %>
		<h2>Fuck</h2>
	<%}else{ %>
		<h2>くそ</h2>
	<%} %>
	<form method="post" action="multilingualPro.jsp">
		<div>
			<input type="radio" name="language" value="korean" <%if(language.equals("korean")){%>checked<%}%>> 한국어 페이지 보기
			<input type="radio" name="language" value="english" <%if(language.equals("english")){%>checked<%}%>> 영어 페이지 보기
			<input type="radio" name="language" value="Japanese" <%if(language.equals("Japanese")){%>checked<%}%>> 일본어 페이지 보기
		</div>
		<div>
			<input type="submit" value="설정">
		</div>
	</form>
</body>
</html>