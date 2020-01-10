<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="Header.jsp"></jsp:include>
	<div class="container">
	<div class="row" style="margin-top:20px;margin-bottom:20px">
		<div class="col-12">
			SẢN PHẨM MỚI
		</div>
	</div>
	<div class="row">
		<c:forEach var="item" items="${ListSanPhamMoi}">
		<div class="col-4">
			<div class="card" style="width: 18rem;">
			  <img class="card-img-top" style="width:200px;height:200px;" src="<c:url value='/recources/hinhanh/${item.hinhAnh}' />" alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">${item.tenSanPham}</h5>
			    <h5 class="card-title">Đơn giá: ${item.donGia}đ</h5>

			    <a href="/banphukiendt/chitietsanpham/${item.idSanPham}" class="btn btn-primary">Xem chi tiết</a>
			  </div>
			</div>
		</div>
		</c:forEach>
	</div>
	<div class="row" style="margin-top:20px;margin-bottom:20px">
		<div class="col-12">
			SẢN PHẨM MỚI
		</div>
	</div>
	<div class="row">
		<div class="col-3">
			<div class="card" style="width: 18rem;">
			  <img class="card-img-top" src="..." alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">Tên sản phẩm</h5>
			    <h5 class="card-title">Đơn giá: 10100000</h5>

			    <a href="/banphukiendt/chitietsanpham" class="btn btn-primary">Xem chi tiết</a>
			  </div>
			</div>
		</div>
		<div class="col-3">
			<div class="card" style="width: 18rem;">
			  <img class="card-img-top" src="..." alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">Tên sản phẩm</h5>
			    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
			    <a href="#" class="btn btn-primary">Go somewhere</a>
			  </div>
			</div>
		</div>
		<div class="col-3">
			<div class="card" style="width: 18rem;">
			  <img class="card-img-top" src="..." alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">Tên sản phẩm</h5>
			    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
			    <a href="#" class="btn btn-primary">Go somewhere</a>
			  </div>
			</div>
		</div>
		<div class="col-3">
			<div class="card" style="width: 18rem;">
			  <img class="card-img-top" src="..." alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">Tên sản phẩm</h5>
			    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
			    <a href="#" class="btn btn-primary">Go somewhere</a>
			  </div>
			</div>
		</div>
	<jsp:include page="Footer.jsp"></jsp:include>