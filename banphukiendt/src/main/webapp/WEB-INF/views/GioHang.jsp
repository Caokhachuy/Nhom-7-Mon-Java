<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="Header.jsp"></jsp:include>
	
	
	<c:if test="${sessionScope.count==0}">
		<div class="row" style="margin:20px;">
			<div class="col-12">
				GIỎ HÀNG TRỐNG
			</div>
			<div class="col-12">
				<a href="/banphukiendt"">Bắt đầu mua hàng</a>
			</div>
		</div>
	</c:if>
	<c:if test="${sessionScope.count>0}">
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
			    <c:forEach var="item" items="${sessionScope.myCartItems}">
			    <tr>
			      <td>
			      	<div class="row">
			      		<div class="col-3">
			      			<img style="width: 70px; height:70px;" src="<c:url value='/recources/hinhanh/${item.value.sanPham.hinhAnh}' />" alt="..." class="img-thumbnail">
			      		</div>
			      		<div class="col-9">
			      			<div style="margin-bottom:20px;">Ten san pham: ${item.value.sanPham.tenSanPham}</div>
			      			<a href="/banphukiendt/giohangchitiet/xoa/${item.value.sanPham.idSanPham}"><span>Remove</span></a>
			      		</div>
			      	</div>
			      </td>
			      <td>${item.value.sanPham.donGia}</td>
			      <td> 
			      	<div class="input-group">
					    <div class="input-group-prepend">
					      <c:if test="${item.value.soLuong==1}">
					      	<button id="sub" type="button" class="btn btn-secondary" disabled>-</button>
					      </c:if>
					      <c:if test="${item.value.soLuong>1}">
					      	<a href="/banphukiendt/giohangchitiet/giam/${item.value.sanPham.idSanPham}"><button id="sub" type="button" class="btn btn-secondary" >-</button></a>
					      </c:if>
					    </div>
					    <input id="${item.value.sanPham.idSanPham}" type="text" style="max-width:50px;" value="${item.value.soLuong}" readonly class="form-control" aria-label="Input group example" aria-describedby="btnGroupAddon">
				    	<div class="input-group-prepend">
				    	  	<a href="/banphukiendt/giohangchitiet/them/${item.value.sanPham.idSanPham}"><button type="button" class="btn btn-secondary">+</button></a>
					    </div>
				    </div>
			      </td>
			      <td>${item.value.tongTien()}đ</td>
			    </tr>
		    </c:forEach>
		   	
		  </tbody>
		</table>
	<div class="row">
		<div class="col-12" style="text-align:right;">
			<span style="margin-right:90px;font-size:20px;">Tổng tiền: ${sessionScope.totalCart}đ</span>
		</div>
	</div>
	<div class="row">
		<div class="col-12" style="text-align:center;margin-top:20px;">
			<a href="/banphukiendt/thongtin"><button type="button" class="btn btn-danger">Tiến hành đặt hàng</button></a>
		</div>
	</div>
	</c:if>
	<jsp:include page="Footer.jsp"></jsp:include>