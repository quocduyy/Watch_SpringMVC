<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<title>Đăng nhập</title>
<body>
	<!-- 
Body Section 
-->
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
					<c:forEach var="item" items="${ categories }">
						<li><a href='<c:url value="/sanpham/${item.id }"/>'> <span
								class="icon-circle	"> </span> ${ item.name }
						</a></li>
					</c:forEach>

					<li><a class="totalInCart" href="<c:url value = "/listCart"/>"><strong>Tổng
								tiền: <span class="badge badge-warning pull-right"
								style="line-height: 18px;"><fmt:formatNumber
										type="number" maxFractionDigits="6" value="${ totalPrice }" />đ</span>
						</strong></a></li>

				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#"><img
					src="<c:url value="/assets/user/img/paypal.jpg"/>"
					alt="payment method paypal"></a>
			</div>

			<a class="shopBtn btn-block" href="#">Upcoming products <br>
				<small>Click to view</small></a> <br> <br>
			<ul class="nav nav-list promowrapper">
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src="<c:url value="/assets/user/img/bootstrap-ecommerce-templates.png"/>"
							alt="bootstrap ecommerce templates">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src="<c:url value="/assets/user/img/shopping-cart-template.png"/>"
							alt="shopping cart template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src="<c:url value="/assets/user/img/bootstrap-template.png"/>"
							alt="bootstrap template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
			</ul>

		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="#">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Đăng nhập</li>
			</ul>
			<div class="row">
				<div class="span4">
					<div class="well" style="padding-left: 10%">
						<h5>Đăng nhâp</h5>
						<form>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<input class="span3" id="email" type="text" placeholder="Email">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Password</label>
								<div class="controls">
									<input type="text" id="password" class="span3"
										placeholder="Password">
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="button"onclick="clickLogin()">Đăng nhập</button>
									<a href="#">Forget password?</a>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="span4">
					<div class="well" style="padding-left: 10%">
						<h5>Đăng ký</h5>
						<form>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<input class="span3" type="text" id = "email2" placeholder="Email">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Password</label>
								<div class="controls">
									<input type="password" id="password2" class="span3" placeholder="Password">
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="inputPassword">SĐT</label>
								<div class="controls">
									<input type="text" id = "mobile" class="span3" placeholder="Nhập số điện thoái">
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="inputPassword">Nhập tên</label>
								<div class="controls">
									<input type="text" id = "name" class="span3" placeholder="Nhập tên">
								</div>
							</div>
							
							
							<div class="control-group">
								<div class="controls">
									<button type="button" onclick="clickDangKy()">Đăng ký</button>
									<a href="#">Forget password?</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>

			<content tag="script"> 
				<script>
				function clickLogin () {
					var email = $("#email").val();
					var pass = $("#password").val();
					window.location = "dangNhap/" + email + "/" + pass;
				};
				
				function clickDangKy () {
					var email = $("#email2").val();
					var pass = $("#password2").val();
					var mobile = $("#mobile").val();
					var name = $("#name").val();
					window.location = "dangKy/" + email + "/" + pass + "/" + mobile + "/" + name;
				};
				</script> 
			</content>
</body>