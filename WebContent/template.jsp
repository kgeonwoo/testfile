<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String pagefile =request.getParameter("page");
	if(pagefile == null){
		pagefile = "newitem";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#t_b {
	height:50px;
}
#left{
	width:150px;
}
header center a{
	margin: 20px;
}
div {
	text-align:center;
}
a {
	text-decoration:none;
}
body table tr {
	height-max: 150px;
	height:auto;
}
#text_page {
	display:inline-block;
	text-align:left;
}
body div form div {
	margin: 30px;
}

body div form #chk {
	text-align:center;
}
label {
	display:inline-block;
	float:left;
	width:160px;
	font-weight:bold;
	text-align:left;
}
div form div {
	text-align:left;
}
#loginForm{
	text-align:center;
	margin: 30px auto;
}
#loginForm form{
	display:inline-block;
}
#loginForm form label{
	width:70px;
}
</style>
<body>
	<table width="960" border="1" color="gray" align="center">
		<tr>
			<td id="t_b" colspan="2"><jsp:include page="top.jsp"></jsp:include></td>
		</tr>
		<tr>
			<td id="left"><jsp:include page="left.jsp"></jsp:include></td>
			<td>
				<jsp:include page='<%= pagefile + ".jsp" %>'></jsp:include>
			</td>
		</tr>
		<tr>
			<td id="t_b" colspan="2"><jsp:include page="bottom.jsp"></jsp:include></td>		
		</tr>
	</table>
</body>
</html>