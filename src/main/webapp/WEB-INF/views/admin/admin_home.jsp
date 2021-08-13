<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>Administrator</title>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/views/admin/layout/variables.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/user/css/admin.css">
</head>
<body>
	<div class="main">
		<div class="sidebar">
			<div class="header_sidebar">
				<div class="header_logo">
					<a href="/index">
						<p>
							ThirtyOne-Goalkeeper</br>

						</p>
						<p>
							<i>Phụ Kiện Thủ Môn</i>
						</p>
					</a>
				</div>
			</div>
			<div class="menu_sidbar">
				<ul id="accordion" class="accordion">
					<li><a href="#" class="nav-link">
							<div class="nav-profile-image">
								<img src="/user/img/logo.jpg" alt="profile"> <span
									class="login-status online"></span>
								<!--change to offline or busy as needed-->
							</div>

							<div class="nav-profile-text d-flex flex-column ml-3">${userLogined.email }
								<span class="font-weight-bold">${userLogined.username }</span> <span
									class="text-secondary text-small">Project Manager</span>
							</div>

					</a></li>
					<li>
						<div class="link">
							<i class="fas fa-home"></i>Trang chủ
						</div>

					</li>
					<li>
						<div class="link">
							<i class="far fa-registered"></i>Thương Hiệu<i
								class="fa fa-chevron-down"></i>
						</div>
						<ul class="submenu">
							<li><a href="${base }/admin/add-category">Thêm Mới</a></li>
							<li><a href="${base }/admin/list-category">Danh Sách</a></li>

						</ul>
					</li>
					<li>
						<div class="link">
							<i class="far fa-boxing-glove"></i>Sản Phẩm<i
								class="fa fa-chevron-down"></i>
						</div>
						<ul class="submenu">
							<li><a href="${base }/admin/add-product">Thêm Mới</a></li>
							<li><a href="${base }/admin/list-product">Danh Sách</a></li>
						</ul>
					</li>
					<li>
						<div class="link">
							<i class="far fa-envelope"></i>Liên Hệ
						</div>
					</li>
					<li>
						<div class="link">
							<i class="fas fa-shipping-fast"></i>Đơn Hàng<i
								class="fa fa-chevron-down"></i>
						</div>
						<ul class="submenu">
							<li><a href="${base }/admin/list-saleorder">Danh Sách</a></li>

						</ul>
					</li>

				</ul>
			</div>
		</div>
		<div class="content">
			<div class="header_conent">
				<span class="open_sidebar"> <i class="fal fa-bars"></i>
				</span>
				<div class="form_search">
					<form>
						<input type="text" placeholder="Nhập từ khóa..." name="search">
						<button>
							<i class="fal fa-search"></i>
						</button>
					</form>
				</div>
				<div class="user">
					<img src="/user/img/logo.jpg">
					<div class="dropdown">
						<button class="btn mt-1 bg-white dropdown-toggle" type="button"
							id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"
							value="${userLogined.email }"></button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item" href="#">Profile</a> <a
								class="dropdown-item" href="#">Sign Out <i
								class="fal fa-sign-out-alt"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="wrapper">
				<div class="row">
					<div
						class="card col-lg-3 col-sm-3 col-xs-12 bg-primary text-white text-center p-3">
						<blockquote class="blockquote mb-0">
							<p>Danh Sách Sản Phẩm.</p>

							<button type="button" class="btn ">
								<a href="${base }/admin/list-product"
									style="text-decoration: none;">Xem tất cả</a>
							</button>

						</blockquote>

					</div>
					<div
						class="card col-lg-3 col-sm-3 col-xs-12 bg-secondary text-white text-center p-3">
						<blockquote class="blockquote mb-0">
							<p>Danh Sách Ngành Sản Phẩm.</p>
							<button type="button" class="btn ">
								<a href="${base }/admin/list-category"
									style="text-decoration: none;">Xem tất cả</a>
							</button>
						</blockquote>
					</div>
					<div
						class="card col-lg-3 col-sm-3 col-xs-12 bg-success text-white text-center p-3">
						<blockquote class="blockquote mb-0">
							<p>Danh Sách Đơn Hàng.</p>
							<button type="button" class="btn ">
								<a href="${base }/admin/list-saleorder"
									style="text-decoration: none;">Xem tất cả</a>
							</button>
						</blockquote>
					</div>
				</div>
			</div>
			<div class="container"
				style="ont-weight: bold; width: 32%; margin: 4% 34%; text-align: center; border-bottom: 1px solid black; font-size: 27px; font-family: monospace;">
				Phản Hồi Của Khách Hàng</div>





			<div class="container col-12  mt-5  p-0 d-flex flex-wrap ">

				<c:forEach items="${contacts }" var="contact" varStatus="loop">
					<div
						class="col-lg-4 col-sm-3 col-xs-12   text-white text-center  flex-wrap">
						<figure class="snip1533">
							<figcaption>
								<blockquote style="margin: 0;">
									<p style="margin: 0;">${contact.firstName }</p>
								</blockquote>
								<p style="margin: 0; margin-bottom: 30px;">${contact.email }</p>
								<h4>${contact.feedBack }</h4>
							</figcaption>
						</figure>
					</div>
				</c:forEach>


			</div>







		</div>
	</div>

	<footer>
		<!---import jquery--->
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
			crossorigin="anonymous"></script>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script type="text/javascript"
			src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js"></script>
		<!---import js--->

		<script type="text/javascript" src="/user/js/admin.js"></script>

	</footer>
</body>

</html>