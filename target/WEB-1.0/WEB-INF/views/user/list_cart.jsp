<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<title>Giỏ hàng</title>
<body>
	<!-- 
Body Section 
-->
	<div class="row">
		<div class="span12">
			<ul class="breadcrumb">
				<li><a href="<c:url value="/"/>">Trang chủ</a> <span
					class="divider">/</span></li>
				<li class="active">Giỏ hàng</li>
			</ul>
			<div class="well well-small">
				<table class="table table-bordered table-condensed">
					<thead>
						<tr>
							<th>Tên sản phẩm</th>
							<th>Hình ảnh</th>
							<th>Mô tả</th>
							<th>Màu sắc</th>
							<th>Đơn giá</th>
							<th>Số lượng</th>
							<th>Tổng tiền</th>
							<th>Chỉnh sửa</th>
							<th>Xóa</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="item" items="${ cart }">
							<tr>
								<td>${ item.value.productDTO.product_name }</td>
								<td><img width="100"
									src="<c:url value = "/assets/user/img/sanpham/${item.value.productDTO.image }"/>"
									alt=""></td>
								<td></td>
								<td><span class="shopBtn"><span class="icon-ok"></span></span>
								</td>
								<td><fmt:formatNumber type="number" maxFractionDigits="6"
										value="${ item.value.productDTO.price }" />đ</td>
								<td><input class="span1" style="max-width: 34px;" min="1"
									id="quanty-cart-${ item.key }" max="100" placeholder="1"
									id="appendedInputButtons" size="16" type="number"
									value="${ item.value.quantities }"></td>
								<td><fmt:formatNumber type="number" maxFractionDigits="6"
										value="${ item.value.productDTO.price * item.value.quantities }" />đ
								</td>
								<td>
								<button data-id="${item.key }" type="button"
									class="btn btn-mini btn-danger btn-Edit-Cart">
									<span class="icon-edit"></span>
								</button>

								</td>
								<td><a href="<c:url value = "/deleteCart/${ item.key }"/>"
									class="btn btn-mini btn-danger"> <span class="icon-remove"></span>
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<br /> <a href="products.html" class="shopBtn btn-large"><span
					class="icon-arrow-left"></span> Tiếp tục mua sắm </a> <a
					href="login.html" class="shopBtn btn-large pull-right">Thanh
					toán <span class="icon-arrow-right"></span>
				</a>
			</div>
		</div>
	</div>

	<content tag="script"> 
		<script>
		$(".btn-Edit-Cart").on("click", function() {
			var id = $(this).data("id");
			var quantity = $("#quanty-cart-" + id).val();
			if (confirm('Bạn có muốn lưu lại không?')) {
				alert("Lưu thành công.");
				window.location = "editCart/" + id + "/" + quantity;
			} else {
				alert("Thất bại");
			}
		});
		</script> 
	 </content>
</body>