<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ThirtyOne GoalKeeper</title>


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

</head>
<body>

	<!-- =====================Header============================= -->
	<jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>
	<!-- ============================= -->



	</div>
	<div class="all_items">
		<div class="section ">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 bg-light">
					<ul id="accordion" class="accordion">
						<li>
							<div class="link">
								<i class="fas fa-home"></i>Trang chủ
								<!-- <i class="fa fa-chevron-down"></i> -->
							</div> <!-- <ul class="submenu">
								<li><a href="#">Photoshop</a></li>
								<li><a href="#">HTML</a></li>
								<li><a href="#">CSS</a></li>
							</ul> -->
						</li>
						<li>
							<div class="link">
								<i class="fas fa-boxing-glove"></i>Găng Tay thủ Môn<i
									class="fa fa-chevron-down"></i>
							</div>

							<ul class="submenu">
								<li><a href="/search?searchText=găng">Xem Tất Cả</a></li>
								<li><a href="/category/Gang-Adidas">Găng Adidas</a></li>
								<li><a href="/category/Gang-H3">Găng H3</a></li>
								<li><a href="/category/Gang-Nike">Găng Nike</a></li>
								<li><a href="/category/Gang-Puma">Găng Puma</a></li>
							</ul>
						</li>
						<li>
							<div class="link">
								<i class="fas fa-boot"></i>Giày Bóng Đá<i
									class="fa fa-chevron-down"></i>
							</div>
							<ul class="submenu">
								<li><a href="/search?searchText=giày">Xem Tất Cả</a></li>
								<li><a href="/category/Giay-Nike">Giày Nike</a></li>
								<li><a href="/category/Giay-Puma">Giày Puma</a></li>
								<li><a href="/category/Giay-Adidas">Giày Adidas</a></li>
								<li><a href="/category/Giay-CT3">Giày CT3</a></li>
							</ul>
						</li>
						<li>
							<div class="link">

								<i class="fas fa-suitcase"></i>Phụ Kiện Thủ Môn<i
									class="fa fa-chevron-down"></i>
							</div>
							<ul class="submenu">
								<li><a href="/search?searchText=phụ">Xem Tất Cả</a></li>
								<li><a href="/category/Dem">Đệm </a></li>
								<li><a href="/category/Pk-khac">Phụ Kiện Khác</a></li>

							</ul>
						</li>
						<li>
							<div class="link">
								<i class="fas fa-tshirt"></i>Quần Áo<i
									class="fa fa-chevron-down"></i>
							</div>
							<ul class="submenu">
								<li><a href="/search?searchText=quần">Xem Tất Cả</a></li>
								<li><a href="/category/Clb">Câu Lạc Bộ</a></li>
								<li><a href="/category/Dt">Đội Tuyển</a></li>
							</ul>
						</li>
					</ul>
					<div class="vsgang">
						<p>Cách vệ sinh găng</p>
						<div id="carouselExampleControls" class="carousel slide"
							data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="/user/img/giat-gang-tay.jpg" alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Giặt Găng Bằng nước Ấm</h5>

									</div>
								</div>
								<div class="carousel-item">
									<img src="/user/img/giat-gang-tay_1.jpg" alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Chà găng bảng ngón trỏ và ngón cái</h5>

									</div>
								</div>
								<div class="carousel-item">
									<img src="/user/img/giat-gang-tay_2.jpg" alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Phơi Găng bằng kẹp</h5>

									</div>
								</div>
							</div>
							<a class="carousel-control-prev" href="#carouselExampleControls"
								role="button" data-slide="prev"> <span
								class="carousel-control-prev-icon" aria-hidden="true"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="carousel-control-next" href="#carouselExampleControls"
								role="button" data-slide="next"> <span
								class="carousel-control-next-icon" aria-hidden="true"></span> <span
								class="sr-only">Next</span>
							</a>
						</div>
					</div>
					<div class="idol">
						<figure class="snip1084 red">
							<img src="/user/img/ik2.jpg" alt="sample43" />

							<a href="#"></a>
						</figure>
					</div>

				</div>

				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 wrap_full_clear">

					<div class="row rows_custome">
						<ul id="autoWidth" class="cs-hidden">
							<c:forEach items="${products }" var="p">
								<li class="item-a">
									<div class="box">
										<div class="slide-img">
											<img src="${base }/upload/${p.avatar }" alt="" />
											<div class="overlay">
												<a href="${base }/detail?id=${p.id}" class="buy-btn">Chi
													Tiết</a>
											</div>
										</div>
										<div class="detail-box">
											<div class="type">
												<a href="#">${p.title }</a> <span
													style="color: #f64749; text-decoration: line-through;">${p.price }<sup>đ</sup></span>
											</div>
											<a href="#" class="price">${p.price_sale }<sup>đ</sup></a>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>




					</div>

				</div>

			</div>
		</div>
		<!-- =============================MENU============================ -->
		<!--<jsp:include page="/WEB-INF/views/user/layout/menu.jsp"></jsp:include> -->
		<!-- ====================================================================== -->
	</div>

	<!-- ==========================FOOTER========================================== -->
	<!-- FOOTER -->
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