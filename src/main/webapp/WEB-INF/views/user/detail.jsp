<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Details</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/user/layout/variables.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
	crossorigin="anonymous" />
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

<link rel="stylesheet" type="text/css" href="/user/css/detail.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>

	<div class="card-wrapper">
		<div class="card">
			<!-- card left -->
			<div class="product-imgs">
				<div class="img-display">
					<div class="img-showcase">
						<img src="${base }/upload/${product.avatar }" alt="shoe image">
						<c:forEach items="${product.products_img }" var="product_img">
							<img alt="shoe image" src="${base }/upload/${product_img.path}">
						</c:forEach>

					</div>
				</div>
				<div class="img-select">
					<c:forEach items="${product.products_img }" var="product_img" varStatus="loop">
						<div class="img-item">
							<a href="#" data-id="${loop.index +2}"> <img
								src="${base }/upload/${product_img.path }">
							</a>
						</div>
					</c:forEach>

				</div>
			</div>
			<!-- card right -->
			<div class="product-content">
				<h2 class="product-title">${product.title }</h2>
				<a href="/user/img/size.jpg" class="product-link">Hướng Dẫn Chọn Size</a>


				<div class="product-price">
					<p class="last-price">
						Price: <span>${product.price }</span>
					</p>
					<p class="new-price">
						Price Sale: <span>${product.price_sale } </span>
					</p>
				</div>

				<div class="product-detail">
					<h2>about this item:</h2>
					<p>${product.detail_description }</p>

					<ul>

						<li>Available: <span>in stock</span></li>
						<li>Shipping Area: <span>All over the world</span></li>
						<li>Shipping Fee: <span>Free</span></li>
					</ul>
				</div>

				<div class="purchase-info">
					Số Lượng <input type="number" min="0" value="1"
						id="sl_${product.id }">
					<button type="button" class="btn"
						onclick="Cart.addItemToCart(${product.id }, 'sl_${product.id }')">
						Add to Cart <i class="fas fa-shopping-cart"></i>
					</button>
				</div>

				<div class="social-links">
					<p>Share At:</p>
					<a href="#"> <i class="fab fa-facebook-f"></i>
					</a> <a href="#"> <i class="fab fa-twitter"></i>
					</a> <a href="#"> <i class="fab fa-instagram"></i>
					</a> <a href="#"> <i class="fab fa-whatsapp"></i>
					</a> <a href="#"> <i class="fab fa-pinterest"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
	<script>

</script>
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
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
	<script type="text/javascript" src="/user/js/cart.js"></script>
	<script type="text/javascript" src="/user/js/script.js"></script>
	<script type="text/javascript" src="/user/js/detail.js"></script>
</body>
</html>