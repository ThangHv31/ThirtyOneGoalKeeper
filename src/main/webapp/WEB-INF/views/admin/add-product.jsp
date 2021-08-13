<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!-- JSTL -->


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin</title>
<jsp:include page="/WEB-INF/views/user/layout/variables.jsp"></jsp:include>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="/admin-resourse/css/admin.css">
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
							<div class="nav-profile-text d-flex flex-column ml-3">
								<span class="font-weight-bold">Hoàng Thắng</span> <span
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
							<li><a href="${base }/admin/add-category">Thêm
									Mới</a></li>
							<li><a href="${base }/admin/list-category">Danh
									Sách</a></li>

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
							aria-haspopup="true" aria-expanded="false">admin</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item" href="#">Profile</a> <a
								class="dropdown-item" href="/logout">Sign Out <i
								class="fal fa-sign-out-alt"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="container col-9 bg-white">
				<h3>Thêm Mới Sản Phẩm</h3>
				<sf:form method="post" action="${base}/admin/add-product"
					modelAttribute="product" enctype="multipart/form-data">

					<sf:hidden path="id" />

					<div class="form-group">
						<label for="category">Thương Hiệu </label>
						<sf:select path="categories.id" class="form-control" id="category">
							<sf:options items="${categories }" itemValue="id"
								itemLabel="name" />
						</sf:select>
					</div>
					<div class="form-group">
						<label for="title">Tên Sản Phẩm </label>
						<sf:input path="title" autocomplete="off" type="text"
							class="form-control" id="title" placeholder="Title"
							required="required"></sf:input>
					</div>
					<div class="form-group">
						<label for="price">Giá </label>
						<sf:input type="number" autocomplete="off" path="price"
							class="form-control" id="price" placeholder="Price"
							required="required"></sf:input>
					</div>
					<div class="form-group">
						<label for="priceSale">Giá Sale </label>
						<sf:input type="number" autocomplete="off" path="price_sale"
							class="form-control" id="price_sale" placeholder="Price sale"
							required="required"></sf:input>
					</div>
					<div class="form-group">
						<label for="short_description">Mô tả</label>
						<sf:textarea autocomplete="off" path="short_description"
							class="form-control" placeholder="Short Description"
							id="short_description" rows="3" required="required"></sf:textarea>
					</div>
					<div class="form-group">
						<label for="detail_description">Chi tiết </label>
						<sf:textarea autocomplete="off" path="detail_description"
							class="form-control summernote" id="detail_description" rows="3"
							required="required"></sf:textarea>
					</div>
					<div class="form-group form-check">
						<sf:checkbox path="isHot" class="form-check-input" id="isHot" />
						<label class="form-check-label" for="isHot">Is Hot
							Product?</label>
					</div>

					<div class="form-group">
						<label for="fileProductAvatar">Avatar</label> <input
							id="fileProductAvatar" name="productAvatar" type="file"
							class="form-control-file">
					</div>
					<div class="form-group">
						<img alt="" style="width: 100px; height: 100px;"
							src="${base }/upload/${product.avatar}">
					</div>

					<div class="form-group">
						<label for="fileProductPictures">Picture(Multiple)</label> <input
							id="product_img" name="product_img" type="file"
							class="form-control-file" multiple="multiple">
					</div>
					
					<div class="form-group">
					<c:forEach items="${product.products_img }" var="products_img">
						<img alt="" style="width: 100px; height: 100px;"
							src="${base }/upload/${products_img.path }">
					</c:forEach>
				</div>
					<a href="/admin/list-product" class="btn btn-secondary active"
						role="button" aria-pressed="true">Back to list</a>
					<button type="submit" class="btn btn-primary">Save Product</button>

				</sf:form>
			</div>

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
		<script type="text/javascript" src="/admin-resourse/js/admin.js"></script>
	</footer>
</body>

</html>