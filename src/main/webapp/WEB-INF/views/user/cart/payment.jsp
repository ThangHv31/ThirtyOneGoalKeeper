<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v3.8.5">
<title>Thanh Toan</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/views/user/layout/variables.jsp"></jsp:include>
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.3/examples/checkout/">

<!-- Bootstrap core CSS -->
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.3/examples/checkout/">

<!-- Bootstrap core CSS -->
<link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
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
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

</head>
<body class="bg-light">
	<jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>
	<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/index">Trang Chủ</a></li>
    <li class="breadcrumb-item active" aria-current="page">Thanh Toán</li>
  </ol>
</nav>
	<div class="container">
		<div class=" text-center">
			<img class="d-block mx-auto mb-4 w-25"
				src="/user/img/logo.jpg"
				alt="" width="72" height="200" style="border-radius: 40px;">
			<h2>Điền đầy đủ thông tin để hoàn tất đặt hàng</h2>
		</div>

		<div class="row p-0">

			<div class="col-md-4 order-md-2 mb-4 mt-5">
				<h4 class="d-flex justify-content-between align-items-center mb-3">
					<span class="text-muted">Giỏ Hàng </span> <span
						class="badge badge-secondary badge-pill">${totalItems }</span>
				</h4>
				<ul class="list-group mb-3">
					<c:forEach items="${cart.cartItems}" var="item" varStatus="loop">
						<li
							class="list-group-item d-flex justify-content-between lh-condensed">
							<div>
								<h6 class="my-0">${item.productName }</h6>
								<small class="text-muted">${item.quanlity }</small>
							</div> <span class="text-muted">${item.priceUnit }</span>
						</li>
					</c:forEach>

				</ul>

				<form class="card p-2 d-block">
					Tổng: <span class="text-muted" id="totalPrice" name="totalPrice">${totalPrice }</span>
					<div class="input-group">
						
						<div class="input-group-append mt-4">
							<button  class="btn btn-secondary"><a href="/cart/view" style="text-decoration: none;">Back to list</a></button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-8 order-md-1 mb-5 mt-5">
				<h4 class="mb-3">Billing address</h4>

				<c:choose>
					<c:when test="${isLogined }">
						<form class="needs-validation mt-5 mb-5" style="display: grid;" method="POST"
							action="${base }/cart/payment" novalidate>
							<div class="row p-0">
								<div class="col-md-6 p-0 float-left">
									<label for="fullName">Full Name</label> <input type="text"
										class="form-control" id="fullName" name="fullName"
										placeholder="" value="${userLogined.username }" required>
									<div class="invalid-feedback">Valid first name is
										required.</div>
								</div>

							</div>
							<div class="col-md-3 p-0 mb-3">
								<label for="mobile">Phone Number</label> <input type="tel"
									class="form-control" name="tel" id="tel" placeholder=""
									required>
								<div class="invalid-feedback">Bắt buộc.</div>
							</div>
							<div class="mb-3 col-9 p-0">
								<label for="email">Email <span class="text-muted">(Optional)</span></label>
								<input type="email" name="email" class="form-control" id="email"
									value="${userLogined.email }">
								<div class="invalid-feedback">Vui lòng nhập email.</div>
							</div>

							<div class="mb-3">
								<label for="address">Địa Chỉ</label> <input type="text"
									class="form-control" name="address" id="address" placeholder=""
									required>
								<div class="invalid-feedback">Vui lòng nhập địa chỉ giao
									hàng.</div>
							</div>
							<div class="input-group-append mt-4">
							<button type="submit" class="btn btn-secondary">Đặt Hàng</button>
						</div>		
						</form>

					</c:when>
					<c:otherwise>

						<form class="needs-validation mt-5 mb-5" style="display: grid;" method="POST"
							action="${base }/cart/payment" novalidate>

							<div class="col-md-6 p-0 float-left">
								<label for="fullName">Full Name</label> <input type="text"
									class="form-control" id="fullName" name="fullName"
									placeholder="" value="" required>
								<div class="invalid-feedback">Valid first name is
									required.</div>
							</div>
							<div class="col-md-3 p-0 mb-3 float-left">
								<label for="mobile">Phone Number</label> <input type="tel"
									class="form-control" name="tel" id="tel" placeholder=""
									required>
								<div class="invalid-feedback">Bắt buộc.</div>
							</div>

							<div class="mb-3 col-9 p-0">
								<label for="email">Email <span class="text-muted">(Optional)</span></label>
								<input type="email" name="email" class="form-control" id="email"
									placeholder="you@example.com">
								<div class="invalid-feedback">Vui lòng nhập email.</div>
							</div>

							<div class="mb-3">
								<label for="address">Địa Chỉ</label> <input type="text"
									class="form-control" name="address" id="address" placeholder=""
									required>
								<div class="invalid-feedback">Vui lòng nhập địa chỉ giao
									hàng.</div>
							</div>
								<div class="input-group-append mt-4">
							<button type="submit" onclick="myFunction()" class="btn btn-secondary">Đặt Hàng</button>
						</div>
						</form>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<script>
function myFunction() {
  alert("Bạn đã đặt hàng thành công!");
}
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
	<script type="text/javascript" src="/user/js/script.js"></script>

</body>
</html>
