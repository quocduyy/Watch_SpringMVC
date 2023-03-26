<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<title>Category</title>
<style>
.pagination {
	display: flex;
	justify-content: center;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
}

.pagination a.active {
	background-color: #eeb437;
	color: white;
	border-radius: 5px;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
	border-radius: 5px;
}
</style>
</head>
<body>
	<div class="well well-small">
	
	<c:if test="${paginateProduct.size() == 0 }">
		<div class = "row">
			<h3><span class = "span6">Không có sản phẩm</span></h3>
		</div>
	</c:if>
	
		<c:if test="${paginateProduct.size() > 0 }">
		<div class="row">
			<select class="pull-right" style="width: 25%;">
				<option>Sắp xếp theo tên</option>
				<option>Sắp xếp theo giá từ thấp - cao</option>
				<option>Sắp xếp theo giá từ cao - thấp</option>
			</select>
		</div>
			<div class="row-fluid">
				<ul class="thumbnails">
					<c:forEach var="item" items="${ paginateProduct }" varStatus="loop">
						<li class="span4">
							<div class="thumbnail">
								<a href="<c:url value="/product_detail/${ item.id_product }"/>"
									class="overlay"></a> <a class="zoomTool"
									href="<c:url value="/product_detail/${ item.id_product }"/>"
									title="add to cart"><span class="icon-search"></span> QUICK
									VIEW</a> <a
									href="<c:url value="/product_detail/${ item.id_product }"/>"><img
									src="<c:url value="/assets/user/img/sanpham/${ item.image }"/>"
									alt=""></a>
								<div class="caption cntr">
									<p>${ item.product_name }</p>
									<p>${ item.price }đ</p>
									<h4>
										<a class="shopBtn"
											href="<c:url value = "/addCart/${ item.id_product }"/>"
											title="add to cart"> Add to cart </a>
										<div class="actionList">
											<a class="pull-left" href="#">Add to Wish List </a> <a
												class="pull-left" href="#"> Add to Compare </a>
										</div>
										<br class="clr">
								</div>
							</div>
						</li>
						<c:if
							test="${ (loop.index + 1) %3 == 0 || (loop.index+1) == paginateProduct.size() }">
				</ul>
			</div>
			<c:if test="${(loop.index + 1) < paginateProduct.size() }">
				<div class="row-fluid">
					<ul class="thumbnails">
			</c:if>
		</c:if>
		</c:forEach>
		</c:if>
		</ul>
	</div>

	<!-- page -->
	<div class="pagination">
		<c:forEach var="item" begin="1" end="${paginateInfo.totalPage}"
			varStatus="loop">

			<c:if test="${ (loop.index) == paginateInfo.currentPage }">
				<a href="<c:url value="/sanpham/${ idCategory }/${ loop.index }"/>"
					class="active">${loop.index}</a>
			</c:if>

			<c:if test="${ (loop.index) != paginateInfo.currentPage }">
				<a href="<c:url value="/sanpham/${ idCategory }/${ loop.index }"/>">${ loop.index }</a>
			</c:if>
		</c:forEach>
	</div>
</body>