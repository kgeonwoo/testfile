<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%
	String id = "hi";
	String pw = "1234";
	String name = "김건우";

	if(id.equals(request.getParameter("id")) && pw.equals(request.getParameter("pw"))){
		Cookie c = new Cookie("username", URLEncoder.encode(name , "UTF-8"));
		c.setMaxAge(60 * 60);
		response.addCookie(c);
		response.sendRedirect("main.jsp");
	}else{
		%>
		<script>
			alert("로그인 실패");
			location.href = "loginForm.jsp";
		</script>
		<%
	}
%>