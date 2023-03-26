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
				
				<div class="navbar-search">
					<input class="search-query span2" id="txtSearch"
						placeholder="Search"/>
					<button onclick="keySearch()" style="padding: 4px 16px;">Tìm kiếm</button>
				</div>


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

		function keySearch() {
			var search = document.getElementById("txtSearch").value;
			location.href = "http://localhost:8080/WEB/key=" + search;
		}
	</script> </content>
</div> 
<!-- Header -->
<%-- <header>
	<!-- Header desktop -->
	<div class="container-menu-desktop">
		<!-- Topbar -->
		<div class="top-bar">
			<div class="content-topbar flex-sb-m h-full container">
				<div class="left-top-bar">Free shipping for standard order
					over $100</div>

				<div class="right-top-bar flex-w h-full">
					<a href="#" class="flex-c-m trans-04 p-lr-25"> Help & FAQs </a> <a
						href="#" class="flex-c-m trans-04 p-lr-25"> My Account </a> <a
						href="#" class="flex-c-m trans-04 p-lr-25"> EN </a> <a href="#"
						class="flex-c-m trans-04 p-lr-25"> USD </a>
				</div>
			</div>
		</div>

		<div class="wrap-menu-desktop">
			<nav class="limiter-menu-desktop container">

				<!-- Logo desktop -->
				<a href="#" class="logo"> <img src="<c:url value="template/web/images/icons/logo-01.png"></c:url>"
				
					alt="IMG-LOGO">
				</a>

				<!-- Menu desktop -->
				<div class="menu-desktop">
					<ul class="main-menu">
						<li class="active-menu"><a href="index.html">Home</a>
							<ul class="sub-menu">
								<li><a href="index.html">Homepage 1</a></li>
								<li><a href="home-02.html">Homepage 2</a></li>
								<li><a href="home-03.html">Homepage 3</a></li>
							</ul></li>

						<li><a href="product.html">Shop</a></li>

						<li class="label1" data-label1="hot"><a
							href="shoping-cart.html">Features</a></li>

						<li><a href="blog.html">Blog</a></li>

						<li><a href="about.html">About</a></li>

						<li><a href="contact.html">Contact</a></li>
					</ul>
				</div>

				<!-- Icon header -->
				<div class="wrap-icon-header flex-w flex-r-m">
					<div
						class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
						<i class="zmdi zmdi-search"></i>
					</div>

					<div
						class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
						data-notify="2">
						<i class="zmdi zmdi-shopping-cart"></i>
					</div>

					<a href="#"
						class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti"
						data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
					</a>
				</div>
			</nav>
		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap-header-mobile">
		<!-- Logo moblie -->
		<div class="logo-mobile">
			<a href="index.html"><img src="<c:url value="template/web/images/icons/logo-01.png"></c:url>"
				alt="IMG-LOGO"></a>
		</div>

		<!-- Icon header -->
		<div class="wrap-icon-header flex-w flex-r-m m-r-15">
			<div
				class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
				<i class="zmdi zmdi-search"></i>
			</div>

			<div
				class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
				data-notify="2">
				<i class="zmdi zmdi-shopping-cart"></i>
			</div>

			<a href="#"
				class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
				data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
			</a>
		</div>

		<!-- Button show menu -->
		<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
			<span class="hamburger-box"> <span class="hamburger-inner"></span>
			</span>
		</div>
	</div>


	<!-- Menu Mobile -->
	<div class="menu-mobile">
		<ul class="topbar-mobile">
			<li>
				<div class="left-top-bar">Free shipping for standard order
					over $100</div>
			</li>

			<li>
				<div class="right-top-bar flex-w h-full">
					<a href="#" class="flex-c-m p-lr-10 trans-04"> Help & FAQs </a> <a
						href="#" class="flex-c-m p-lr-10 trans-04"> My Account </a> <a
						href="#" class="flex-c-m p-lr-10 trans-04"> EN </a> <a href="#"
						class="flex-c-m p-lr-10 trans-04"> USD </a>
				</div>
			</li>
		</ul>

		<ul class="main-menu-m">
			<li><a href="index.html">Home</a>
				<ul class="sub-menu-m">
					<li><a href="index.html">Homepage 1</a></li>
					<li><a href="home-02.html">Homepage 2</a></li>
					<li><a href="home-03.html">Homepage 3</a></li>
				</ul> <span class="arrow-main-menu-m"> <i
					class="fa fa-angle-right" aria-hidden="true"></i>
			</span></li>

			<li><a href="product.html">Shop</a></li>

			<li><a href="shoping-cart.html" class="label1 rs1"
				data-label1="hot">Features</a></li>

			<li><a href="blog.html">Blog</a></li>

			<li><a href="about.html">About</a></li>

			<li><a href="contact.html">Contact</a></li>
		</ul>
	</div>

	<!-- Modal Search -->
	<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
		<div class="container-search-header">
			<button
				class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
				<img src="<c:url value="template/web/images/icons/icon-close2.png"></c:url>" alt="CLOSE">
				
			</button>

			<form class="wrap-search-header flex-w p-l-15">
				<button class="flex-c-m trans-04">
					<i class="zmdi zmdi-search"></i>
				</button>
				<input class="plh3" type="text" name="search"
					placeholder="Search...">
			</form>
		</div>
	</div>
</header>

<!-- Cart -->
<div class="wrap-header-cart js-panel-cart">
	<div class="s-full js-hide-cart"></div>

	<div class="header-cart flex-col-l p-l-65 p-r-25">
		<div class="header-cart-title flex-w flex-sb-m p-b-8">
			<span class="mtext-103 cl2"> Your Cart </span>

			<div
				class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
				<i class="zmdi zmdi-close"></i>
			</div>
		</div>

		<div class="header-cart-content flex-w js-pscroll">
			<ul class="header-cart-wrapitem w-full">
				<li class="header-cart-item flex-w flex-t m-b-12">
					<div class="header-cart-item-img">
						<img src="images/item-cart-01.jpg" alt="IMG">
					</div>

					<div class="header-cart-item-txt p-t-8">
						<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
							White Shirt Pleat </a> <span class="header-cart-item-info"> 1
							x $19.00 </span>
					</div>
				</li>

				<li class="header-cart-item flex-w flex-t m-b-12">
					<div class="header-cart-item-img">
						<img src="	<c:url value="template/web/images/item-cart-02.jpg"></c:url>" alt="IMG">
					
					</div>

					<div class="header-cart-item-txt p-t-8">
						<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
							Converse All Star </a> <span class="header-cart-item-info"> 1
							x $39.00 </span>
					</div>
				</li>

				<li class="header-cart-item flex-w flex-t m-b-12">
					<div class="header-cart-item-img">
						<img src="<c:url value="template/web/images/item-cart-03.jpg"></c:url>" alt="IMG">
						
					</div>

					<div class="header-cart-item-txt p-t-8">
						<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
							Nixon Porter Leather </a> <span class="header-cart-item-info">
							1 x $17.00 </span>
					</div>
				</li>
			</ul>

			<div class="w-full">
				<div class="header-cart-total w-full p-tb-40">Total: $75.00</div>

				<div class="header-cart-buttons flex-w w-full">
					<a href="shoping-cart.html"
						class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
						View Cart </a> <a href="shoping-cart.html"
						class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
						Check Out </a>
				</div>
			</div>
		</div>
	</div>
</div> --%>