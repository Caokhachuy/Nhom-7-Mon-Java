<%@page import="dao.Databasecauhinh"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="entity.sanpham"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<jsp:include page="HeaderAdmin.jsp"></jsp:include>
	
		<div class="row">
			<div class="col-3">
				<div class="form-sanpham">
					<form action="/banphukiendt/admin" method="post" enctype="multipart/form-data">
					  <div class="form-group">
					    <label for="exampleFormControlInput1">Tên sản phẩm</label>
					    <input type="text" class="form-control" name="tenSanPham" id="exampleFormControlInput1" placeholder="Nhập tên sản phẩm">
					  </div>
					  <div class="form-group">
					    <label for="exampleFormControlInput1">Đơn giá</label>
					    <input type="text" class="form-control" name="donGia" id="exampleFormControlInput1" placeholder="Nhập đơn giá">
					  </div>
					  <div class="form-group">
					    <label for="exampleFormControlInput1">Số lượng</label>
					    <input type="text" class="form-control" name="soLuong" id="exampleFormControlInput1" placeholder="Nhập số ">
					  </div>
					  <div class="form-group">
					    <label for="exampleFormControlTextarea1">Mô tả</label>
					    <textarea class="form-control" name="moTa" id="exampleFormControlTextarea1" rows="3"></textarea>
					  </div>
					  <div class="form-group">
					    <label for="exampleFormControlSelect1">Nhà sản xuất</label>
					    <select class="form-control" name="idNhaSanXuat" id="exampleFormControlSelect1">
					      	<option value="11111111">Mỹ</option>
					      	<option value="22222222">Trung Quốc</option>
					      	<option value="33333333">Hàn Quốc</option>
					    </select>
					  </div>
					  <div class="form-group">
					    <label for="exampleFormControlSelect1">Loại máy</label>
					    <select class="form-control" name="idLoaiMay" id="exampleFormControlSelect1">
					      	<option value="1">Iphone</option>
					      	<option value="2">Oppo</option>
					      	<option value="3">Samsung</option>
					    </select>
					  </div>
					  <div class="form-group">
					    <label for="exampleFormControlInput1">Hình ảnh</label>
					    <input type="file" name="hinhAnh" class="form-control-file" id="exampleFormControlFile1">
					  </div>
					  <button type="submit" class="btn btn-primary mb-2">Thêm sản phẩm</button>
					</form>
				</div>
			</div>
			<div class="col-9">
				<div class="row">
					<div class="col-12">
						Danh sách sản phẩm
					</div>
				</div>
				<div class="form-sanpham">
					<table class="table table-striped">
					  <thead>
					    <tr>
					      <th scope="col">ID </th>
					      <th scope="col">Tên sản phẩm</th>
					      <th scope="col">Đơn giá</th>
					      <th scope="col">Số Lượng</th>
					      <th scope="col">Hình ảnh</th>
					      <th scope="col">Mô tả</th>
					    </tr>
					  </thead>
					  <tbody>
					  	<%
					  		List<sanpham> listsanpham = (List<sanpham>) request.getAttribute("listSP");
					    	for(sanpham sp : listsanpham){
					    		String img= "/recources/hinhanh/" + sp.getHinhAnh();

					  	%>
					  		<tr>
						      <th scope="row"><%=sp.getIdSanPham() %></th>
						      <td><%=sp.getTenSanPham() %></td>
						      <td><%=sp.getDonGia() %></td>
						      <td style="max-width: 100px"><%=sp.getSoLuong() %> <%=sp.getIdNhaSanXuat() %> <%=sp.getIdLoaiMay() %></td>
						      <c:set var="hinhanh" value="<%=sp.getHinhAnh() %>"/>
						      <td><img style="witdh:100px; height:100px;" src="<c:url value='/recources/hinhanh/${hinhanh}' />"></td>
						      <td style="max-width: 120px">
						      	<div class="btn-group">
						      		<a href="/banphukiendt/suasanpham/<%=sp.getIdSanPham() %>" ><button style="width:80px;" type="button" class="btn btn-warning">Edit</button></a>
						      	</div>
						      	<div class="btn-group">
						      		<a onclick="return confirmDelete('Bấm OK để xoá sản phẩm')" href="/banphukiendt/admin/<%=sp.getIdSanPham() %>"><button style="width:80px;" type="button" class="btn btn-danger">Delete</button></a>
						      	</div>
						      	
						      	<script>
							        function confirmDelete(msg){
							        	if(window.confirm(msg) == true){
							        		return true;
							        	}
							        	return false;
							        }
							    </script>
						      </td>
						    </tr>
					  	<%
					    	}
					  	%>
					  </tbody>
					</table>
				</div>
			</div>
		</div>	
		
	<jsp:include page="FooterAdmin.jsp"></jsp:include>