<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!-- JSTL -->
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Administrator</title>
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
							<i class="far fa-envelope"></i>Quản Lí User<i
								class="fa fa-chevron-down"></i>
						</div>
						<ul class="submenu">
							<li><a href="${base }/admin/list-user">Danh Sách</a></li>
							
						</ul>
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
				<div class="title">Danh Sách User</div>

				<table class="table table-bordered">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">UserName</th>
							<th scope="col">Email</th>
							<th scope="col">Vị Trí</th>
							<th scope="col">Trạng Thái</th>
							<th scope="col">Active</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${user}" var="u" varStatus="loop">
							<tr>
								<th scope="row">${loop.index + 1}</th>
								<td>${u.username }</td>
								<td>${u.email }</td>
								<td>${u.username }</td>
								<td><span id="_user_status_${u.id} }"> <c:choose>
											<c:when test="${u.status }">
												<span class="badge badge-primary"><i class="fas fa-check-circle"></i></span>
											</c:when>
											<c:otherwise>
												<span class="badge badge-warning"><i class="fas fa-times-circle"></i></span>
											</c:otherwise>
										</c:choose>
								</span></td>
								<td><a class="btn btn-primary"
									href="${base }/admin/edit-user?id=${u.id}"
									role="button">Edit <i class="fas fa-edit"></i></a>
									<button class="btn btn-danger" role="button"
										onclick="DeleteUser(${u.id})">Delete <i class="fas fa-trash"></i></button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<script type="text/javascript">
		function DeleteUser(userId) {
			// javascript object.
			var data = {};
			
			// $ === jQuery
			$.ajax({
				url : "/admin/delete-user?userId=" + userId,
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(data),
	
				dataType : "json",
				success : function(jsonResult) {
					if (jsonResult.code == 200) {
						
						$("#_user_status_" + productId).html("<span class=\"badge badge-warning\"><i class=\"fas fa-times-circle\"></i></span>");
						
					} else {
						alert(jsonResult.message);
					}
				},
				error : function(jqXhr, textStatus, errorMessage) { // error callback 
					
				}
			});
		}
	</script>

			<script type="text/javascript">
				function SaveProduct() {
					// javascript object.
					var data = {};
					data["name"] = $("#nameP").val();
					data["type"] = $("#typeP").val();
					data["branch"] = $("#branchP").val();
					data["price"] = $("#priceP").val();

					$.ajax({
						url : "/admin-aj",
						type : "post",
						contentType : "application/json",
						data : JSON.stringify(data),

						dataType : "json",
						success : function(jsonResult) {
							if (jsonResult.code == 200) {
								alert(jsonResult.status)
							} else {
								alert(jsonResult.data);
							}
						},
						error : function(jqXhr, textStatus, errorMessage) { // error callback 

						}
					});
				}
			</script>
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