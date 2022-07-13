<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="loginForm">
	<form action="testLogin.jsp" method="post">
		
		<div>
			<label for="userId">아이디 : </label>
			<input type="text" name="id" id="userId">
		</div>
		
		<div>
			<label for="userPw">암 호 : </label>
			<input type="password" name="pw" id="userPw">
		</div>
		
		<input type="submit" value="로그인">
	</form>
</div>