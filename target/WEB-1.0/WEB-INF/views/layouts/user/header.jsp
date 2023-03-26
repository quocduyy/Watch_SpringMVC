<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<header id="header">
	<div class="row">
		<div class="span4">
			<h1>
				<a class="logo" href="index"><span>Twitter Bootstrap
						ecommerce template</span> <img
					src="<c:url value="/assets/user/img/logo-bootstrap-shoping-cart.png" />"
					alt="bootstrap sexy shop"> </a>
			</h1>
		</div>
		<div class="span4">
			<div class="offerNoteWrapper">
				<h1 class="dotmark">
					<i class="icon-cut"></i> Twitter Bootstrap shopping cart HTML
					template is available @ $14
				</h1>
			</div>
		</div>
		<div class="span4 alignR">
			<p>
				<br> <strong> Support (24/7) : 0800 1234 678 </strong><br>
				<br>
			</p>
			<span class="btn btn-mini">[ ${ totalQuantity } ] <span
				class="icon-shopping-cart"></span></span>
		</div>
	</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse"
				class="btn btn-navbar"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>

			<div class="nav-collapse">
				<ul class="nav">

					<c:forEach var="item" items="${ menus }" varStatus="index">
						<c:if test="${index.first }">
							<li class="active"><a href="<c:url value="/"/>">
									${item.name} </a></li>
						</c:if>
						<c:if test="${ not index.first }">
							<li><a href="/categoies/${item.id }"> ${item.name} </a></li>
						</c:if>
					</c:forEach>
				</ul>
				<form action="#" class="navbar-search pull-left">
					<input type="text" placeholder="Search" class="search-query span2">
				</form>
				<ul class="nav pull-right">
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"><span class="icon-lock"></span>
							Đăng nhập <b class="caret"></b></a>
						<div class="dropdown-menu">
							<form class="form-horizontal loginFrm">
								<div class="control-group">
									<input type="text" class="span2" id="email1"
										placeholder="Nhập Email" />
								</div>
								<div class="control-group">
									<input type="password" class="span2" id="password1"
										placeholder="Nhập mật khẩu" />
								</div>
								<div class="control-group">
									<label class="checkbox"> <input type="checkbox">Ghi
										nhớ tài khoản
									</label>
									<button type="button" onclick="clickLogin()"
										class="shopBtn btn-block">Đăng nhập</button>
									<a href="<c:url value = "/dangKy"/>" class="shopBtn btn-block">Đăng
										ký</a>
								</div>
							</form>
						</div></li>
				</ul>
			</div>
		</div>
	</div>

	<content tag="script"> <script>
		function clickLogin() {
			var email = $("#email1").val();
			var pass = $("#password1").val();
			window.location = "dangNhap/" + email + "/" + pass;
		};
	</script> </content>
</div>