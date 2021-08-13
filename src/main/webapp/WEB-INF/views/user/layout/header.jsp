<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<header class="header">
	<div class="img_content">
		<img src="/user/img/header.jpg">
	</div>
	<div class="head_menu">
		<div class="menu-container pt-3 pb-3">
			<div class="menu">
				<ul class="clearfix">
					<li><a href="${base }/index">Trang Chủ</a></li>
					<li><a href="#">Sản Phẩm</a>
						<ul>
							<li><a href="/search?searchText=găng">Găng Tay thủ Môn</a>
								<ul>

									<li><a href="/category/Gang-Adidas">Găng Adidas</a></li>
									<li><a href="/category/Gang-H3">Găng H3</a></li>
									<li><a href="/category/Gang-Nike">Găng Nike</a></li>
									<li><a href="/category/Gang-Puma">Găng Puma</a></li>
								</ul></li>
							<li><a href="/search?searchText=phụ">Phụ Kiện Thủ Môn</a>
								<ul>

									<li><a href="/category/Dem">Đệm </a></li>
									<li><a href="/category/Pk-khac">Phụ Kiện Khác</a></li>

								</ul></li>
							<li><a href="/search?searchText=giay">Giày Bóng Đá</a>
								<ul>

									<li><a href="/category/Giay-Nike">Giày Nike</a></li>
									<li><a href="/category/Giay-Puma">Giày Puma</a></li>
									<li><a href="/category/Giay-Adidas">Giày Adidas</a></li>
									<li><a href="/category/Giay-CT3">Giày CT3</a></li>
								</ul></li>
							<li><a href="/search?searchText=quan">Quần Áo</a>
								<ul>
									<li><a href="/category/Clb">Câu Lạc Bộ</a></li>
									<li><a href="/category/Dt">Đội Tuyển</a></li>

								</ul></li>
						</ul></li>
					<li><a href="#">Giới Thiệu</a></li>
					<li><a href="${base }/contact">Contact</a></li>
					<li class="nav-item">
						<div class="bg-white rounded shadow">
							<form action="${base }/search" style="position: absolute;" method="get">
								<div class=" bg-light rounded rounded-pill shadow-sm ">
									<div class="input-group border border-primary">
										<input type="text" placeholder="Nhập từ bạn cần tìm?"
											name="searchText" aria-describedby="button-addon1"
											class="form-control border-0 bg-light">
										<div class="input-group-append">
											<button id="button-addon1" type="submit"
												class="btn btn-link text-primary">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</li>
					<li><a href="#"><i class="fas fa-user"></i></a>
						<ul>
							<li><a href="/signIn">Đăng Nhập </a></li>
							<li><a href="/logout">Đăng Xuất</a></li>
						</ul>
					<li><a href="${base }/cart/view"><i
							class="far fa-shopping-bag"></i><sup id="totalItemsInCart">${totalItems }</sup></a>

					</li>
				</ul>

			</div>
		</div>
	</div>



</header>