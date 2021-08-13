<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Start Bootstrap Template</title>

<!-- TagLibs -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- Variables -->
<jsp:include page="/WEB-INF/views/user/layout/variables.jsp"></jsp:include>

<!-- CSS -->
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/user/css/index.css">
<link rel="stylesheet" type="text/css" href="/user/css/cart.css">
</head>

<body>

	<!-- HEADER -->
	<jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>

	<!-- Page Content -->
	
	<div class="container">
	<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/index">Trang Chủ</a></li>
    <li class="breadcrumb-item active" aria-current="page">Giỏ Hàng</li>
  </ol>
</nav>
		<section id="cart">
			<c:forEach items="${cart.cartItems}" var="item" varStatus="loop">

				<article class="product">
					<header>
						<a class="remove" onclick="cart/delate/${item.productId}"> <img
							src="${base }/upload/${item.path }" alt="">

							<h3>Remove product</h3>
						</a>
					</header>

					<div class="content">

						<h1>${item.productName }</h1>

						${item.short_description }

						
					</div>

					<footer class="content">
					
						<span class="qt" id="sl">${item.quanlity }</span>
						
						<h2 class="full-price">${item.priceUnit * item.quanlity }</h2>

						<h2 class="price">${item.priceUnit }</h2>
					</footer>
				</article>
			</c:forEach>
		</section>

	</div>

	<footer id="site-footer">
		<div class="container clearfix">



			<div class="right">
				<h1 class="total">
					Total: <span>${totalPrice }</span>€
				</h1>
				<a class="nav-link ml-lg-4" href="${base }/cart/payment"><button
						type="button" class="btn btn-dark">Tiến Hành Đặt Hàng</button></a>

			</div>

		</div>
		
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
		<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>

		<!-- JS -->
		<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>

	</footer>

	<!-- FOOTER -->


	<!-- JS -->


</body>

</html>
