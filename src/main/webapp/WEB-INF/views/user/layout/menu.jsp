<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 wrap_full_clear">




	<div class="all_items_title">Sản phẩm nổi bật</div>
	<div class="row rows_custome">

		<c:forEach items="${products }" var="p">
			<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 col_custome/">
				<div class="p_card">
					<div class="image">
						<img src="${base }/upload/${p.avatar }" alt="">
						<div class="price">
							<a href="#"><span></span></a>
							<p>
								Price : <span>100<sup>$</sup></span>
							</p>
						</div>
					</div>
					<div class="card-content">
						<div class="wrapper">
							<div class="title">${p.title }</div>
							
							<span class="price">${p.price }</span>
							<div class="content size">
								<div class="name size-name">Size</div>
								<div class="size-value">
									<span class="color ">7</span> <span class="color ">8</span> <span
										class="color">9</span> <span class="color">10</span> <span
										class="color">7.5</span>
								</div>
							</div>
							<div class="content colour">
								<div class="name colour-name">Colour</div>
								<div class="colour-value">
									<span class="white" data-color="lightgrey"
										data-img="/user/img/nike_grip3_1.jpg"></span> <span
										class="blue active" data-color="#456ABD"
										data-img="/user/img/nike_grip3_4.jpg"></span> <span
										class="yellow" data-color="#EAA523"
										data-img="/user/img/nike_grip3_3.jpg"></span>
								</div>
							</div>
							<div class="btns">
								<button>Buy now</button>
								<button type="button" class="btn btn-warning btn-sm"
									href="${base }/details?id=${p.id}">Add
									to cart</button>
							</div>
						</div>
					</div>
				</div>

			</div>
		</c:forEach>



		<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 col_custome/">
			<div class="p_card">
				<div class="image">
					<img src="/user/img/h3_robo21_1.png" alt="">
					<div class="price">
						<a href="#"><span>Áo Adidas</span></a>
						<p>
							Price : <span>100<sup>$</sup></span>
						</p>
					</div>
				</div>
				<div class="card-content">
					<div class="wrapper">
						<div class="title">Adidas Originals</div>
						<p>Men's running tshirt</p>
						<span class="price">$29.99</span>
						<div class="content size">
							<div class="name size-name">Size</div>
							<div class="size-value">
								<span class="color ">7</span> <span class="color ">8</span> <span
									class="color">9</span> <span class="color">10</span> <span
									class="color">7.5</span>
							</div>
						</div>
						<div class="content colour">
							<div class="name colour-name">Colour</div>
							<div class="colour-value">
								<span class="white" data-color="lightgrey"
									data-img="/user/img/h3_robo21_1.png"></span> <span
									class="blue active" data-color="#456ABD"
									data-img="/user/img/h3_robo21_2.png"></span> <span
									class="yellow" data-color="#EAA523"
									data-img="/user/img/h3_robo21_3.png"></span>
							</div>
						</div>
						<div class="btns">
							<button>Buy now</button>
							<button>Add to cart</button>
						</div>
					</div>
				</div>
			</div>

		</div>









		<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 col_custome/">
			<div class="p_card ">
				<div class="image active" id="1">
					<img src="/user/img/nike_grip3_promo_1.jpg" alt="">
					<div class="price">
						<a href="#"><span>Áo Adidas</span></a>
						<p>
							Price : <span>100<sup>$</sup></span>
						</p>
					</div>
				</div>
				<div class="card-content">
					<div class="wrapper">
						<div class="title">Adidas Originals</div>
						<p>Men's running tshirt</p>
						<span class="price">$29.99</span>
						<div class="content size">
							<div class="name size-name">Size</div>
							<div class="size-value">
								<span class="color ">7</span> <span class="color ">8</span> <span
									class="color">9</span> <span class="color">10</span> <span
									class="color">7.5</span>
							</div>
						</div>
						<div class="content colour">
							<div class="name colour-name">Colour</div>
							<div class="colour-value">
								<span class="white" data-color="lightgrey"
									data-img="/user/img/nike_grip3_promo_1.jpg"></span> <span
									class="blue active" data-color="white"
									data-img="/user/img/nike_grip3_promo_2.jpg"></span> <span
									class="yellow" data-color="black"
									data-img="/user/img/nike_grip3_promo_3.jpg"></span>
							</div>
						</div>
						<div class="btns">
							<button>Buy now</button>
							<button>Add to cart</button>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 col_custome/">
			<div class="p_card ">
				<div class="image active" id="1">
					<img src="/user/img/h3_robo21.png" alt="">
					<div class="price">
						<a href="#"><span>Áo Adidas</span></a>
						<p>
							Price : <span>100<sup>$</sup></span>
						</p>
					</div>
				</div>
				<div class="card-content">
					<div class="wrapper">
						<div class="title">Adidas Originals</div>
						<p>Men's running tshirt</p>
						<span class="price">$29.99</span>
						<div class="content size">
							<div class="name size-name">Size</div>
							<div class="size-value">
								<span class="color ">7</span> <span class="color ">8</span> <span
									class="color">9</span> <span class="color">10</span> <span
									class="color">7.5</span>
							</div>
						</div>
						<div class="content colour">
							<div class="name colour-name">Colour</div>
							<div class="colour-value">
								<span class="white" data-color="lightgrey"
									data-img="/user/img/h3_robo21.png"></span> <span
									class="blue active" data-color="white"
									data-img="/user/img/h3_robo21.png"></span> <span class="yellow"
									data-color="black" data-img="/user/img/h3_robo21.png"></span>
							</div>
						</div>
						<div class="btns">
							<button>Buy now</button>
							<button>Add to cart</button>
						</div>
					</div>
				</div>
			</div>
		</div>









		<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 col_custome/">
			<div class="p_card">
				<div class="image">
					<img src="/user/img/puma_onegrip1_1.jpg" alt="">
					<div class="price">
						<a href="#"><span>Áo Adidas</span></a>
						<p>
							Price : <span>100<sup>$</sup></span>
						</p>
					</div>
				</div>
				<div class="card-content">
					<div class="wrapper">
						<div class="title">Adidas Originals</div>
						<p>Men's running tshirt</p>
						<span class="price">$29.99</span>
						<div class="content size">
							<div class="name size-name">Size</div>
							<div class="size-value">
								<span class="color ">7</span> <span class="color ">8</span> <span
									class="color">9</span> <span class="color">10</span> <span
									class="color">7.5</span>
							</div>
						</div>
						<div class="content colour">
							<div class="name colour-name">Colour</div>
							<div class="colour-value">
								<span class="white1" data-color="lightgrey"
									data-img="/user/img/puma_onegrip1_1.jpg"></span> <span
									class="blue1 active" data-color="#456ABD"
									data-img="/user/img/puma_onegrip1_2.jpg"></span> <span
									class="yellow1" data-color="#EAA523"
									data-img="/user/img/puma_onegrip1_3.jpg"></span>
							</div>
						</div>
						<div class="btns">
							<button>Buy now</button>
							<button>Add to cart</button>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>
</div>