
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<title>Chi tiết sản phẩm</title>
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
								style="line-height: 18px;"> <fmt:formatNumber
										type="number" maxFractionDigits="6" value="${ totalPrice }" />đ
							</span>
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
				<li><a href="<c:url value="/"/>">Trang chủ</a> <span
					class="divider"></span></li>
				<li><a href="<c:url value="/sanpham/${idCategory.id }"/>">Sản
						phẩm</a> <span class="divider"></span></li>
				<li class="active">Chi tiết sản phẩm</li>
			</ul>
			<c:if test="${ empty product }">
				<div class="span6" style="display: unset; padding: 0">
					<h3>Sản phẩm không có</h3>
				</div>
			</c:if>
			<c:if test="${ not empty product }">
				<div class="well well-small">
					<div class="row-fluid">
						<div class="span5">
							<div id="myCarousel" class="carousel slide cntr">
								<div class="carousel-inner">

									<c:forEach var="item" items="${ images }" varStatus="index">
										<c:if test="${index.first }">
											<div class="item active">
												<img src="<c:url value="/assets/user/img/sanpham/${item}"/>"
													alt="${product.product_name }" style="width: 100%" />
											</div>
										</c:if>
										<c:if test="${ not index.first }">
											<div class="item">
												<img src="<c:url value="/assets/user/img/sanpham/${item}"/>"
													alt="${product.product_name }" style="width: 100%" />
											</div>
										</c:if>
									</c:forEach>
								</div>

								<a class="left carousel-control" href="#myCarousel"
									data-slide="prev">‹</a> <a class="right carousel-control"
									href="#myCarousel" data-slide="next">›</a>
							</div>
						</div>
						<div class="span7">
							<h3>${ product.product_name }</h3>
							<hr class="soft" />

							<form class="form-horizontal qtyFrm" method="get"
								action="<c:url value="/addCart/${product.id_product }"/>">

							 <div class="control-group">
									<label class="control-label"><span>Giá</span></label>

									<c:forEach var="item" items="${ prices }" varStatus="index">
										<c:if test="${index.first }">

											<div class="controls">
												<label class="control-label"><span class="span8">${ item }
														đ </span></label>
											</div>

										</c:if>

									</c:forEach>
								</div> 

								<div class="control-group">
									<label class="control-label"><span>Bộ nhớ trong</span></label>
									<div class="controls">
										<select class="span9">
											<c:forEach var="item" items="${memories}">
												<option>${ item }</option>
											</c:forEach>

										</select>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label"><span>Màu sắc</span></label>

									<div class="controls">
										<select class="span9">
											<c:forEach var="item" items="${ colors }">
												<option>${item}</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label"><span>RAM</span></label>

									<div class="controls">
										<label class="control-label"><span class="span8">${ product.RAM }
												GB</span></label>
									</div>
								</div>


								<div class="control-group">
									<label class="control-label"><span>CPU</span></label>

									<div class="controls">
										<label class="control-label"><span class="span8">${ product.CPU }</span></label>
									</div>
								</div>

								<p>${product.detail }
								<p>
									<button type="submit" class="shopBtn">
										<span class=" icon-shopping-cart"></span> Thêm vào giỏ hàng
									</button>
							</form>
						</div>
					</div>
				</div>
			</c:if>
		</div>
	</div>
	<!-- Body wrapper -->
</body>