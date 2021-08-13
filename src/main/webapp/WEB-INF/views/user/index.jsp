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
								<p>Miễn phí vận chuyển</p>
								<span>Miễn phí vận chuyển với đơn hàng từ 1.000.000vnđ</span>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
						<div class="wraptem">
							<span class="img"><img src="/user/img/transfer.jpg"
								alt="icon" /></span>
							<div class="content_right">
								<p>Đổi trả hàng</p>
								<span>Đổi trả hàng nếu sản phẩm sai kích thước hoặc lỗi
									từ nhà sản xuất</span>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
						<div class="wraptem">
							<span class="img"><img src="/user/img/savetime.jpg"
								alt="icon" /></span>
							<div class="content_right">
								<p>Tiết kiệm thời gian</p>
								<span>Mua sắm, lựa chọn sản phẩm dễ dàng hơn </span>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
						<div class="wraptem">
							<span class="img"><img src="/user/img/tuvan.jpg"
								alt="icon" /></span>
							<div class="content_right">
								<p>Tư vấn trực tiếp</p>
								<span>Đội ngũ tư vấn nhiệt tình</span>
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
											<span>Lựa chọn một đôi găng tay phù hợp sẽ giúp bạn tự
												tin hơn để bảo vệ khung thành.</span>
										</p>
										<h2>Găng Tay Thủ Môn</h2>
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
											<span>Một đôi giày tốt sẽ giúp người chơi tự tin hơn
												trong các trận bóng , đồng thời giữ an toàn cho đôi chân
												tránh khỏi những chấn thương khi tiếp xúc với bóng cũng như
												với mặt sân.</span>
										</p>
										<h2>Giày Bóng Đá</h2>
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
											<span>Các bạn có thể tham khảo các mẫu quần áo hiện
												đang có tại ThirtyOne Goalkeeper ở đây nhé.</span>
										</p>
										<h2>Quần áo Bóng đá</h2>
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
											<span>Những phụ kiện nhằm bảo vệ bạn hạn chế những
												chấn thương, những vết trầy xước khi chơi thể thao.</span>
										</p>
										<h2>Phụ Kiện & Đồ bảo vệ</h2>
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
											<span>Cửa hàng có tất cả các mẫu bóng, cam kết chính
												hãng 100%.</span>
										</p>
										<h2>Bóng</h2>
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
			style="text-align: center; margin-top: 3%; font-size: 1.75rem; width: 30%; margin: 3% 35%; border-bottom: 2px solid gray; font-weight: 600; font-family: -webkit-pictograph;">Khám
			Phá Ngay</h3>
		<div class="container bg-light mt-5">

			<div class="projcard projcard-blue">
				<div class="projcard-innerbox">
					<img class="projcard-img" src="/user/img/gangintro.jpg" />
					<div class="projcard-textbox">
						<div class="projcard-title">Găng tay thủ môn</div>
						<div class="projcard-subtitle">Cam Kết Chính Hãng</div>
						<div class="projcard-bar"></div>
						<div class="projcard-description">Các đôi găng của thủ môn
							thường sử dụng lớp mút dày ở bề mặt lòng trong. Chúng sẽ tạo ra
							độ ma sát tốt giúp người thủ môn có thể bắt dính bóng hơn so với
							việc sử dụng đôi tay trần. Với các đôi găng thủ môn, đặc biệt là
							những đôi găng có thiết kế khung xương thì việc đấm bóng sẽ trở
							nên chính xác và tạo ra sự an toàn hơn cho khung thành đội nhà.</div>
						<a href="/search?searchText=găng">Xem Tất Cả</a>
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
									<a href="/detail?id=7" class="buy-btn">Chi Tiết</a>
								</div>
							</div>
							<div class="detail-box">
								<div class="type">
									<a href="#">Găng Nike Vapor Grip 3 - Hồng</a> <span
										style="color: #f64749; text-decoration: line-through;">650000.00<sup>đ</sup></span>
								</div>
								<a href="#" class="price">590000.00<sup>đ</sup></a>
							</div>
						</div>
					</li>

					<li class="item-a">
						<div class="box">
							<div class="slide-img">
								<img src="/upload/product/avatar/adidas_pre_1.jpg" alt="" />
								<div class="overlay">
									<a href="/detail?id=8" class="buy-btn">Chi Tiết</a>
								</div>
							</div>
							<div class="detail-box">
								<div class="type">
									<a href="#">Găng Adidas Ace - Đỏ</a> <span
										style="color: #f64749; text-decoration: line-through;">550000.00<sup>đ</sup></span>
								</div>
								<a href="#" class="price">540000.00<sup>đ</sup></a>
							</div>
						</div>
					</li>

					<li class="item-a">
						<div class="box">
							<div class="slide-img">
								<img src="/upload/product/avatar/nike_grip3_2.jpg" alt="" />
								<div class="overlay">
									<a href="/detail?id=9" class="buy-btn">Chi Tiết</a>
								</div>
							</div>
							<div class="detail-box">
								<div class="type">
									<a href="#">Găng Nike Vapor Grip 3 - Đen</a> <span
										style="color: #f64749; text-decoration: line-through;">560000.00<sup>đ</sup></span>
								</div>
								<a href="#" class="price">520000.00<sup>đ</sup></a>
							</div>
						</div>
					</li>
				</ul>
				<div style="text-align: center; margin-bottom: 3%;">
					<a href="/search?searchText=găng" style="text-decoration: none;">Xem
						Tất Cả</a>
				</div>
			</div>
		</div>
		<div class="container bg-light mt-5">

			<div class="projcard projcard-red">
				<div class="projcard-innerbox">
					<img class="projcard-img" src="/user/img/giay1.jpg" />
					<div class="projcard-textbox">
						<div class="projcard-title">Giày Bóng Đá</div>
						<div class="projcard-subtitle">Cam Kết Chính Hãng</div>
						<div class="projcard-bar"></div>
						<div class="projcard-description">.Giày bóng đá là loại
							giày được thiết kế dành riêng cho những người có nhu cầu chơi
							bóng đá. Giày bóng đá có thiết kế đặc biệt với gai và đinh giúp
							tạo độ bám sân tốt để người chơi có thể di chuyển dễ dàng, linh
							hoạt và với tốc độ cao. Không chỉ giúp nâng cao thành tích thi
							đấu, giày bóng đá còn giúp bảo vệ chân khỏi các va chạm và chấn
							thương không mong muốn trong các pha tranh chấp bóng.</div>
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
									<a href="/detail?id=23" class="buy-btn">Chi Tiết</a>
								</div>
							</div>
							<div class="detail-box">
								<div class="type">
									<a href="#">Giày Nike Mercurial - Vàng</a> <span
										style="color: #f64749; text-decoration: line-through;">700000.00<sup>đ</sup></span>
								</div>
								<a href="#" class="price">5500000.00<sup>đ</sup></a>
							</div>
						</div>
					</li>

					<li class="item-a">
						<div class="box">
							<div class="slide-img">
								<img src="/upload/product/avatar/mer_trang1.jpg" alt="" />
								<div class="overlay">
									<a href="/detail?id=24" class="buy-btn">Chi Tiết</a>
								</div>
							</div>
							<div class="detail-box">
								<div class="type">
									<a href="#">Giày Nike Mercurial - Trắng</a> <span
										style="color: #f64749; text-decoration: line-through;">750000.00<sup>đ</sup></span>
								</div>
								<a href="#" class="price">650000.00<sup>đ</sup></a>
							</div>
						</div>
					</li>
					<li class="item-a">
						<div class="box">
							<div class="slide-img">
								<img src="/upload/product/avatar/x19hong.jpg" alt="" />
								<div class="overlay">
									<a href="/detail?id=25" class="buy-btn">Chi Tiết</a>
								</div>
							</div>
							<div class="detail-box">
								<div class="type">
									<a href="#">Giày Adidas X19.1 - Hồng</a> <span
										style="color: #f64749; text-decoration: line-through;">1150000.00<sup>đ</sup></span>
								</div>
								<a href="#" class="price">1000000.00<sup>đ</sup></a>
							</div>
						</div>
					</li>
				</ul>
				<div style="text-align: center; margin-bottom: 3%;">
					<a href="/search?searchText=giay" style="text-decoration: none;">Xem
						Tất Cả</a>
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
						style="font-size: 25px; text-align: center; font-family: monospace; margin-top: 5%;">Sản
						Phẩm Nổi Bật</div>
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