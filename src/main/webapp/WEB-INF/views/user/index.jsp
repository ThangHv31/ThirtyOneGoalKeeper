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
	<div class="main">
	
		<div class="i">
			
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100" src="/user/img/sl_1.jpg"
							alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="/user/img/sl.jpg"
							alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100 m" src="/user/img/sl_2.jpg"
							alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>

	</div>

	<div class="policies">
		<section class="section_service">
			<div>
				<div class="row">
					<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 pl-lg-3">
						<div class="wraptem">
							<span class="img"><img src="/user/img/fs1.jpg" alt="icon" /></span>
							<div class="content_right">
								<p>Mi???n ph?? v???n chuy???n</p>
								<span>Mi???n ph?? v???n chuy???n v???i ????n h??ng t??? 1.000.000vn??</span>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
						<div class="wraptem">
							<span class="img"><img src="/user/img/transfer.jpg"
								alt="icon" /></span>
							<div class="content_right">
								<p>?????i tr??? h??ng</p>
								<span>?????i tr??? h??ng n???u s???n ph???m sai k??ch th?????c ho???c l???i
									t??? nh?? s???n xu???t</span>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
						<div class="wraptem">
							<span class="img"><img src="/user/img/savetime.jpg"
								alt="icon" /></span>
							<div class="content_right">
								<p>Ti???t ki???m th???i gian</p>
								<span>Mua s???m, l???a ch???n s???n ph???m d??? d??ng h??n </span>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
						<div class="wraptem">
							<span class="img"><img src="/user/img/tuvan.jpg"
								alt="icon" /></span>
							<div class="content_right">
								<p>T?? v???n tr???c ti???p</p>
								<span>?????i ng?? t?? v???n nhi???t t??nh</span>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>





		<section class="awe-section-3">
			<section class="section_category">
				<div class="container col-lg-9 col-xs-12">
					<div class="wrap">
						<div class="row">
							<div
								class="col-lg-8 col-md-12 col-sm-8 col-xs-12 item_proprety p-0 pr-lg-3 m-0">
								<figure class="snip0058 green">
									<img src="/user/img/gang1.jpg" />
									<figcaption>
										<p>
											<span>L???a ch???n m???t ????i g??ng tay ph?? h???p s??? gi??p b???n t???
												tin h??n ????? b???o v??? khung th??nh.</span>
										</p>
										<h2>G??ng Tay Th??? M??n</h2>
										<div class="icons">
											<a href="#"><i class="fas fa-info-square"></i></a>
										</div>
									</figcaption>
								</figure>
							</div>
							<div
								class="col-lg-4 col-sm-12 col-md-12 col-xs-12 item_proprety p-0 m-0">
								<figure class="snip0058 green">
									<img src="/user/img/giaycr7.jpg" />
									<figcaption>
										<p>
											<span>M???t ????i gi??y t???t s??? gi??p ng?????i ch??i t??? tin h??n
												trong c??c tr???n b??ng , ?????ng th???i gi??? an to??n cho ????i ch??n
												tr??nh kh???i nh???ng ch???n th????ng khi ti???p x??c v???i b??ng c??ng nh??
												v???i m???t s??n.</span>
										</p>
										<h2>Gi??y B??ng ????</h2>
										<div class="icons">
											<a href="#"><i class="fas fa-info-square"></i></a>
										</div>
									</figcaption>
								</figure>
							</div>
							<div
								class="col-lg-4 col-sm-6 col-md-12 col-xs-12 item_proprety p-0 m-0">
								<figure class="snip0058 green">
									<img src="/user/img/quanao1.jpg" />
									<figcaption>
										<p>
											<span>C??c b???n c?? th??? tham kh???o c??c m???u qu???n ??o hi???n
												??ang c?? t???i ThirtyOne Goalkeeper ??? ????y nh??.</span>
										</p>
										<h2>Qu???n ??o B??ng ????</h2>
										<div class="icons">
											<a href="#"><i class="fas fa-info-square"></i></a>
										</div>
									</figcaption>
								</figure>
							</div>

							<div
								class="col-lg-4 col-sm-6 col-md-12 col-xs-12 item_proprety pr-3 pl-3 m-0">
								<figure class="snip0058 green">
									<img src="/user/img/combat1.jpg" />
									<figcaption>
										<p>
											<span>Nh???ng ph??? ki???n nh???m b???o v??? b???n h???n ch??? nh???ng
												ch???n th????ng, nh???ng v???t tr???y x?????c khi ch??i th??? thao.</span>
										</p>
										<h2>Ph??? Ki???n & ????? b???o v???</h2>
										<div class="icons">
											<a href="#"><i class="fas fa-info-square"></i></a>
										</div>
									</figcaption>
								</figure>
							</div>

							<div
								class="col-lg-4 col-sm-12 col-md-12 col-xs-12 item_proprety p-0 m-0">
								<figure class="snip0058 green">
									<img src="/user/img/bong.jpg" />
									<figcaption>
										<p>
											<span>C???a h??ng c?? t???t c??? c??c m???u b??ng, cam k???t ch??nh
												h??ng 100%.</span>
										</p>
										<h2>B??ng</h2>
										<div class="icons">
											<a href="#"><i class="fas fa-info-square"></i></a>
										</div>
									</figcaption>
								</figure>
							</div>
						</div>
					</div>
				</div>
			</section>
		</section>
		<h3
			style="text-align: center; margin-top: 3%; font-size: 1.75rem; width: 30%; margin: 3% 35%; border-bottom: 2px solid gray; font-weight: 600; font-family: -webkit-pictograph;">Kh??m
			Ph?? Ngay</h3>
		<div class="container bg-light mt-5">

			<div class="projcard projcard-blue">
				<div class="projcard-innerbox">
					<img class="projcard-img" src="/user/img/gangintro.jpg" />
					<div class="projcard-textbox">
						<div class="projcard-title">G??ng tay th??? m??n</div>
						<div class="projcard-subtitle">Cam K???t Ch??nh H??ng</div>
						<div class="projcard-bar"></div>
						<div class="projcard-description">C??c ????i g??ng c???a th??? m??n
							th?????ng s??? d???ng l???p m??t d??y ??? b??? m???t l??ng trong. Ch??ng s??? t???o ra
							????? ma s??t t???t gi??p ng?????i th??? m??n c?? th??? b???t d??nh b??ng h??n so v???i
							vi???c s??? d???ng ????i tay tr???n. V???i c??c ????i g??ng th??? m??n, ?????c bi???t l??
							nh???ng ????i g??ng c?? thi???t k??? khung x????ng th?? vi???c ?????m b??ng s??? tr???
							n??n ch??nh x??c v?? t???o ra s??? an to??n h??n cho khung th??nh ?????i nh??.</div>
						<a href="/search?searchText=g??ng">Xem T???t C???</a>
					</div>
				</div>
			</div>
			<div>
				<ul id="autoWidth" class="cs-hidden">
					<li class="item-a">
						<div class="box">
							<div class="slide-img">
								<img src="/upload/product/avatar/nike_grip3_new_3.jpg" alt="" />
								<div class="overlay">
									<a href="/detail?id=7" class="buy-btn">Chi Ti???t</a>
								</div>
							</div>
							<div class="detail-box">
								<div class="type">
									<a href="#">G??ng Nike Vapor Grip 3 - H???ng</a> <span
										style="color: #f64749; text-decoration: line-through;">650000.00<sup>??</sup></span>
								</div>
								<a href="#" class="price">590000.00<sup>??</sup></a>
							</div>
						</div>
					</li>

					<li class="item-a">
						<div class="box">
							<div class="slide-img">
								<img src="/upload/product/avatar/adidas_pre_1.jpg" alt="" />
								<div class="overlay">
									<a href="/detail?id=8" class="buy-btn">Chi Ti???t</a>
								</div>
							</div>
							<div class="detail-box">
								<div class="type">
									<a href="#">G??ng Adidas Ace - ?????</a> <span
										style="color: #f64749; text-decoration: line-through;">550000.00<sup>??</sup></span>
								</div>
								<a href="#" class="price">540000.00<sup>??</sup></a>
							</div>
						</div>
					</li>

					<li class="item-a">
						<div class="box">
							<div class="slide-img">
								<img src="/upload/product/avatar/nike_grip3_2.jpg" alt="" />
								<div class="overlay">
									<a href="/detail?id=9" class="buy-btn">Chi Ti???t</a>
								</div>
							</div>
							<div class="detail-box">
								<div class="type">
									<a href="#">G??ng Nike Vapor Grip 3 - ??en</a> <span
										style="color: #f64749; text-decoration: line-through;">560000.00<sup>??</sup></span>
								</div>
								<a href="#" class="price">520000.00<sup>??</sup></a>
							</div>
						</div>
					</li>
				</ul>
				<div style="text-align: center; margin-bottom: 3%;">
					<a href="/search?searchText=g??ng" style="text-decoration: none;">Xem
						T???t C???</a>
				</div>
			</div>
		</div>
		<div class="container bg-light mt-5">

			<div class="projcard projcard-red">
				<div class="projcard-innerbox">
					<img class="projcard-img" src="/user/img/giay1.jpg" />
					<div class="projcard-textbox">
						<div class="projcard-title">Gi??y B??ng ????</div>
						<div class="projcard-subtitle">Cam K???t Ch??nh H??ng</div>
						<div class="projcard-bar"></div>
						<div class="projcard-description">.Gia??y bo??ng ??a?? la?? loa??i
							gia??y ????????c thi???t k??? d??nh ri??ng cho nh???ng ng?????i c?? nhu c???u ch??i
							b??ng ????. Gi??y b??ng ???? c?? thi???t k??? ?????c bi???t v???i gai v?? ??inh gi??p
							t???o ????? b??m s??n t???t ????? ng?????i ch??i c?? th??? di chuy???n d??? d??ng, linh
							ho???t v?? v???i t???c ????? cao. Kh??ng ch??? gi??p n??ng cao th??nh t??ch thi
							?????u, gi??y b??ng ???? c??n gi??p b???o v??? ch??n kh???i c??c va ch???m v?? ch???n
							th????ng kh??ng mong mu???n trong c??c pha tranh ch???p b??ng.</div>
						<div class="projcard-tagbox"></div>
					</div>
				</div>
			</div>
			<div>
				<ul id="autoWidth" class="cs-hidden">
					<li class="item-a">
						<div class="box">
							<div class="slide-img">
								<img src="/upload/product/avatar/mer_vang1.jpg" alt="" />
								<div class="overlay">
									<a href="/detail?id=23" class="buy-btn">Chi Ti???t</a>
								</div>
							</div>
							<div class="detail-box">
								<div class="type">
									<a href="#">Gi??y Nike Mercurial - V??ng</a> <span
										style="color: #f64749; text-decoration: line-through;">700000.00<sup>??</sup></span>
								</div>
								<a href="#" class="price">5500000.00<sup>??</sup></a>
							</div>
						</div>
					</li>

					<li class="item-a">
						<div class="box">
							<div class="slide-img">
								<img src="/upload/product/avatar/mer_trang1.jpg" alt="" />
								<div class="overlay">
									<a href="/detail?id=24" class="buy-btn">Chi Ti???t</a>
								</div>
							</div>
							<div class="detail-box">
								<div class="type">
									<a href="#">Gi??y Nike Mercurial - Tr???ng</a> <span
										style="color: #f64749; text-decoration: line-through;">750000.00<sup>??</sup></span>
								</div>
								<a href="#" class="price">650000.00<sup>??</sup></a>
							</div>
						</div>
					</li>
					<li class="item-a">
						<div class="box">
							<div class="slide-img">
								<img src="/upload/product/avatar/x19hong.jpg" alt="" />
								<div class="overlay">
									<a href="/detail?id=25" class="buy-btn">Chi Ti???t</a>
								</div>
							</div>
							<div class="detail-box">
								<div class="type">
									<a href="#">Gi??y Adidas X19.1 - H???ng</a> <span
										style="color: #f64749; text-decoration: line-through;">1150000.00<sup>??</sup></span>
								</div>
								<a href="#" class="price">1000000.00<sup>??</sup></a>
							</div>
						</div>
					</li>
				</ul>
				<div style="text-align: center; margin-bottom: 3%;">
					<a href="/search?searchText=giay" style="text-decoration: none;">Xem
						T???t C???</a>
				</div>
			</div>
		</div>

	</div>
	<div style="max-height: 300px;">

		<img src="/user/img/saved.jpg" alt="sample43" />


	</div>
	<div class="all_items">
		<div class="section ">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 bg-light">
					<div
						style="font-size: 25px; text-align: center; font-family: monospace; margin-top: 5%;">S???n
						Ph???m N???i B???t</div>
					<ul id="accordion" class="accordion">
						<li>
							<div class="link">
								<i class="fas fa-home"></i>Trang ch???
								<!-- <i class="fa fa-chevron-down"></i> -->
							</div> <!-- <ul class="submenu">
								<li><a href="#">Photoshop</a></li>
								<li><a href="#">HTML</a></li>
								<li><a href="#">CSS</a></li>
							</ul> -->
						</li>
						<li>
							<div class="link">
								<i class="fas fa-boxing-glove"></i>G??ng Tay th??? M??n<i
									class="fa fa-chevron-down"></i>
							</div>

							<ul class="submenu">
								<li><a href="/search?searchText=g??ng">Xem T???t C???</a></li>
								<li><a href="/category/Gang-Adidas">G??ng Adidas</a></li>
								<li><a href="/category/Gang-H3">G??ng H3</a></li>
								<li><a href="/category/Gang-Nike">G??ng Nike</a></li>
								<li><a href="/category/Gang-Puma">G??ng Puma</a></li>
							</ul>
						</li>
						<li>
							<div class="link">
								<i class="fas fa-boot"></i>Gi??y B??ng ????<i
									class="fa fa-chevron-down"></i>
							</div>
							<ul class="submenu">
								<li><a href="/search?searchText=gi??y">Xem T???t C???</a></li>
								<li><a href="/category/Giay-Nike">Gi??y Nike</a></li>
								<li><a href="/category/Giay-Puma">Gi??y Puma</a></li>
								<li><a href="/category/Giay-Adidas">Gi??y Adidas</a></li>
								<li><a href="/category/Giay-CT3">Gi??y CT3</a></li>
							</ul>
						</li>
						<li>
							<div class="link">

								<i class="fas fa-suitcase"></i>Ph??? Ki???n Th??? M??n<i
									class="fa fa-chevron-down"></i>
							</div>
							<ul class="submenu">
								<li><a href="/search?searchText=ph???">Xem T???t C???</a></li>
								<li><a href="/category/Dem">?????m </a></li>
								<li><a href="/category/Pk-khac">Ph??? Ki???n Kh??c</a></li>

							</ul>
						</li>
						<li>
							<div class="link">
								<i class="fas fa-tshirt"></i>Qu???n ??o<i
									class="fa fa-chevron-down"></i>
							</div>
							<ul class="submenu">
								<li><a href="/search?searchText=qu???n">Xem T???t C???</a></li>
								<li><a href="/category/Clb">C??u L???c B???</a></li>
								<li><a href="/category/Dt">?????i Tuy???n</a></li>
							</ul>
						</li>
					</ul>
					<div class="vsgang">
						<p>C??ch v??? sinh g??ng</p>
						<div id="carouselExampleControls" class="carousel slide"
							data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="/user/img/giat-gang-tay.jpg" alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Gi???t G??ng B???ng n?????c ???m</h5>

									</div>
								</div>
								<div class="carousel-item">
									<img src="/user/img/giat-gang-tay_1.jpg" alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Ch?? g??ng b???ng ng??n tr??? v?? ng??n c??i</h5>

									</div>
								</div>
								<div class="carousel-item">
									<img src="/user/img/giat-gang-tay_2.jpg" alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Ph??i G??ng b???ng k???p</h5>

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
													Ti???t</a>
											</div>
										</div>
										<div class="detail-box">
											<div class="type">
												<a href="#">${p.title }</a> <span
													style="color: #f64749; text-decoration: line-through;">${p.price }<sup>??</sup></span>
											</div>
											<a href="#" class="price">${p.price_sale }<sup>??</sup></a>
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