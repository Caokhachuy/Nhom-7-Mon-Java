<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="/banphukiendt">Trang chủ</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="/banphukiendt/chitietloaisanpham/1">Iphone <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/banphukiendt/chitietloaisanpham/2">SamSung <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/banphukiendt/chitietloaisanpham/3">Oppo <span class="sr-only">(current)</span></a>
	      </li>
	        <li class="nav-item">
	        <a class="nav-link" href="/banphukiendt/chitietloaisanpham/4">Nokia <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="/banphukiendt/giohangchitiet" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          <c:if test="${sessionScope.count>0}">Cart(${sessionScope.count})</c:if>
	          <c:if test="${sessionScope.count==0 || sessionScope.count==null}">Cart</c:if>
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	           <c:forEach var="item" items="${sessionScope.myCartItems}">
	          	  <div class="row">
		          	<div class="col-4"><img src="<c:url value='/recources/hinhanh/${item.value.sanPham.hinhAnh}' />" alt="..." class="img-thumbnail"></div>
		          	<div class="col" style="si">
		          		<div style="font-size:9px;">Tên sản phâm: ${item.value.sanPham.tenSanPham}</div>
		          		<div style="font-size:9px;">Số lượng: ${item.value.soLuong}</div>
		          		<div style="font-size:9px;">Đơn giá: ${item.value.sanPham.donGia}</div>
		          	</div>
		          </div>
	          </c:forEach>
	          <c:if test="${sessionScope.count>0}">
		          <div class="dropdown-divider"></div>
		          <div class="row">
		          	<div class="col-12" style="font-size:9px;">Tổng tiền: ${sessionScope.totalCart} vnđ</div>
		          	<div class="col-12">
			          	<a href="/banphukiendt/giohangchitiet"><span style="font-size:10px; margin-left:0px;">Chi tiết</span></a>
			        </div>
		          </div>
	          </c:if>
	        </div>
	      </li>
	    </ul>
	    <form class="form-inline my-2 my-lg-0" action="/banphukiendt/timkiem" method="get">
	      <input class="form-control mr-sm-2" type="search" name="timKiem" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	    </form>
	  </div>
	</nav>