<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<jsp:include page="Header.jsp"></jsp:include>
	
	<div class="row">
		<div class="col-12">
			<a href="/banphukiendt/" style="color: red">Trang chủ</a> >
			<a>Kết quả tìm kiếm cho: ${TimKiem}</a>
		</div>
	</div>
	
	<div class="row space">
		<row class="col-12" style="margin-left:20px;margin-top:20px;margin-bottom:20px;">
			<h4>Kết quả tìm kiếm cho : ${TimKiem}</h3>
		</row>
	</div>
	
	<div class="album py-5 bg-light">
		<div class="row">
			<c:if test="${KetQua.size() == 0}">
				<div class="col-12" style="text-align:center;">
				  ${ThongBao}
				</div>
			</c:if>
			<c:forEach var="item" items="${KetQua}">
		        <div class="col-md-4">
		          <div class="card mb-4 box-shadow">
		            <img class="card-img-top" style="width:200px;height:200px;" src="<c:url value='/recources/hinhanh/${item.hinhAnh}' />" alt="Card image cap">
		            <div class="card-body">
		           		<p class="card-text" style="height:35px;">${item.tenSanPham }</p>
		              	<c:if test="${item.soLuong == 0}">
		              		<p class="card-text">${item.donGia}đ (Đã hết hàng)</p>
		              	</c:if>
		             	<c:if test="${item.soLuong > 0}">
		              		<p class="card-text">${item.donGia}đ</p>
		              	</c:if>	
		              <div class="d-flex justify-content-between align-items-center">
		                <div class="btn-group">
		                  <a href="/banphukiendt/chitietsanpham/${item.idSanPham}"><button type="button" class="btn btn-primary">Xem Chi Tiết</button></a>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		        
	        </c:forEach>
	   	</div>
   	</div>
	
	<jsp:include page="Footer.jsp"></jsp:include>