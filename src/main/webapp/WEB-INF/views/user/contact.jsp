<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Contact</title>
<jsp:include page="/WEB-INF/views/user/layout/variables.jsp"></jsp:include>

<link rel="stylesheet" type="text/css" href="/user/css/contact.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">

</head>
<body>
	
	<section>
		<div class="container">
			<div class="containerinfo">
				<div>
					<h2>Thông Tin Liên Hệ</h2>
					<ul class="info">
						<li><span><i class="fa fa-map-marker"
								aria-hidden="true"></i></span> <span>Quốc Lộ 32 cũ - Hiệp Thuận - Phúc Thọ - Hà Nội
						</span></li>
						<li><span><i class="fa fa-envelope" aria-hidden="true"></i></span>
							<span>thangsmell@gmail.com</span></li>
						<li><span><i class="fa fa-phone-square"
								aria-hidden="true"></i></span> <span>012-345-6789</span></li>
					</ul>
				</div>
				<ul class="sci">
					<li><a href="#"><i class="fa fa-facebook"
							aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"
							aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-instagram"
							aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-pinterest"
							aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-linkedin"
							aria-hidden="true"></i></a></li>
				</ul>
			</div>
			<sf:form  method="post" action="/contact-spring-form"
		modelAttribute="contact" class="containerForm">
				<h2>Gửi Lời Nhắn</h2>
				<div class="formBox">
					<div class="inputBox w50">
						<sf:input type="text" name="firstName" path="firstName" /> <span>Họ</span>
					</div>
					<div class="inputBox w50">
						<sf:input type="text" name="lastName" path="lastName" /> <span>Tên</span>
					</div>
					<div class="inputBox w50">
						<sf:input type="Email" name="email" path="email"  /> <span>Email</span>
					</div>
					<div class="inputBox w50">
						<sf:input type="text" name="phone" path="phone" /> <span>Số
							Điện Thoại</span>
					</div>
					<div class="inputBox w100">
						<sf:textarea name="feedBack" path="feedBack" ></sf:textarea>
						<span>Lời Nhắn Của Bạn</span>
					</div>
					
					<div class="inputBox w100">
						<a href="/index"><button type="button" class="btn btn-info">Quay Về Trang Chủ</button></a>
						<button type="submit" class="btn btn-info">Gửi</button>
					</div>
				</div>
			</sf:form>
		</div>

	</section>
</body>
</html>