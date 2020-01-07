<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="#">Trang chủ</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Iphone <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">SamSung <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Oppo <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          Giỏ hàng
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="#">Action</a>
	          <a class="dropdown-item" href="#">Another action</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#">Something else here</a>
	        </div>
	      </li>
	    </ul>
	    <form class="form-inline my-2 my-lg-0">
	      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	    </form>
	  </div>
	</nav>
	
	
	<div class="row" style="margin:20px;">
		<div class="col-12">
			GIỎ HÀNG TRỐNG
		</div>
		<div class="col-12">
			<a href="/banphukiendt"">Bắt đầu mua hàng</a>
		</div>
	</div>

		<div class="row" style="margin:20px;">
			<div class="col">
				GIỎ HÀNG
			</div>
		</div>
	
		<table class="table" style="margin:20px;width:1000px" >
		  <thead>
		    <tr>
		      <th scope="col">Sản phẩm</th>
		      <th scope="col">Giá</th>
		      <th scope="col">Số lượng</th>
		      <th scope="col">Tổng tiền</th>
		    </tr>
		  </thead>
		  <tbody>
			    <tr>
			      <td>
			      	<div class="row">
			      		<div class="col-3">
			      			<img style="width: 70px; height:70px;" src="<c:url value='/resources/images/${item.value.sanPham.hinhAnh}' />" alt="..." class="img-thumbnail">
			      		</div>
			      		<div class="col-9">
			      			<div style="margin-bottom:20px;">Ten san pham: thhhjjjjj</div>
			      			<a href="/banphukiendt/giohang/xoa/${item.value.sanPham.idSanPham}"><span>Remove</span></a>
			      		</div>
			      	</div>
			      </td>
			      <td>100000đ</td>
			      <td> 
			      	<div class="input-group">
					    <div class="input-group-prepend">		      
					      	<a href="/banphukiendt/giohang/giam/f"><button id="sub" type="button" class="btn btn-secondary" >-</button></a>
					    </div>
					    <input  type="text" style="max-width:50px;" value="1" readonly class="form-control" aria-label="Input group example" aria-describedby="btnGroupAddon">
				    	<div class="input-group-prepend">
				    	  	<a href="/banphukiendt/giohang/them/c"><button type="button" class="btn btn-secondary">+</button></a>
					    </div>
				    </div>
			      </td>
			      <td>1000000đ</td>
			    </tr>
		  </tbody>
		</table>
	<div class="row">
		<div class="col-12" style="text-align:right;">
			<span style="margin-right:90px;font-size:20px;">Tổng tiền: 10000000đ</span>
		</div>
	</div>
	<div class="row">
		<div class="col-12" style="text-align:center;margin-top:20px;">
			<a href="/banphukiendt/thongtin"><button type="button" class="btn btn-danger">Tiến hành đặt hàng</button></a>
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>