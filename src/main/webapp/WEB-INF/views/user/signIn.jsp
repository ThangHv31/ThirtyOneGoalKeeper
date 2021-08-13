<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Đăng Nhập - Đăng Kí</title>
<jsp:include page="/WEB-INF/views/user/layout/variables.jsp"></jsp:include>
<link rel="stylesheet" href="/user/css/signIn.css">

</head>
<body>
	<div class="container" id="container">
		<div class="form-container sign-up-container">
			<form action="${base}/user/signIn" method="POST"
				>
				<h1>Tạo Tài Khoản Mới</h1>
				<input name="username" type="text" placeholder="Name" />
				<input name="email" type="email" placeholder="Email" />
				<input name="password" id="pass" type="password" placeholder="Password" />
				<input name="repassword" id="repass" class="form-control"
							placeholder="Repeat password" type="password">
				<p id="error"></p>			
				<button type="submit">Đăng Kí</button>
			</form>
			>
		</div>
		<div class="form-container sign-in-container">
			<form method="POST" action="/perform_login">
				<h1>Đăng Nhập</h1>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />

				<c:if test="${not empty param.login_error}">
					<div class="alert alert-danger" role="alert">Login attempt
						was not successful, try again!!!</div>
				</c:if>
				<div class="form-group">
					<input type="text" name="username" class="form-control"
						placeholder="Username">
				</div>
				<div class="form-group">
					<input type="password" name="password" class="form-control"
						placeholder="Password">
				</div>
				<button type="submit">Đăng Nhập</button>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>Welcome Back!</h1>
					<p>To keep connected with us please login with your personal
						info</p>
					<button class="ghost" id="signIn">ĐĂng Nhập</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>Hello, Friend!</h1>
					<p>Enter your personal details and start journey with us</p>
					<button class="ghost" id="signUp">Đăng Kí</button>
				</div>
			</div>
		</div>
	</div>

	<footer>
		<script type="text/javascript" src="/user/js/signIn.js"></script>
	</footer>
</body>


</html>