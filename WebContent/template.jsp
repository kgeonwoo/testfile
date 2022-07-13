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
	width:100px;
	height:100px;
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