<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<jsp:include page="HeaderAdmin.jsp"></jsp:include>
	
	<div style="margin:10px;">
		<div class="row">
			<div class="col-12">
				${SanPham.tenSanPham}
			</div>
		</div>
		<form action="/banphukiendt/thongsokythuat/${SanPham.idSanPham}" method="post" enctype="multipart/form-data">
			<div class="row">
				<div class="col-12">
					<div class="form-group" hidden="hidden">
				    	<label for="exampleFormControlInput1">ID</label>
					    <input type="text" class="form-control"name="idSanPham" value="${SanPham.idSanPham}" id="exampleFormControlInput1" placeholder="Nhập CPU">
			    	</div>
				</div>
			</div>
			<div class="row">
				<div class="col-4">
					<div class="form-group">
				    	<label for="exampleFormControlInput1">Màng hình</label>
					    <input type="text" class="form-control"name="mangHinh" id="exampleFormControlInput1" placeholder="Nhập màng hình">
			    	</div>
				</div>
				<div class="col-4">
					<div class="form-group">
				    	<label for="exampleFormControlInput1">Hệ điều hành</label>
					    <input type="text" class="form-control"name="heDieuHanh" id="exampleFormControlInput1" placeholder="Nhập hệ điều hành">
			    	</div>
				</div>
				<div class="col-4">
					<div class="form-group">
				    	<label for="exampleFormControlInput1">Camera sau</label>
					    <input type="text" class="form-control"name="cameraSau" id="exampleFormControlInput1" placeholder="Nhập camera sau">
			    	</div>
				</div>
			</div>
			<div class="row">
				<div class="col-4">
					<div class="form-group">
				    	<label for="exampleFormControlInput1">Camera trước</label>
					    <input type="text" class="form-control"name="cameraTruoc" id="exampleFormControlInput1" placeholder="Nhập camera trước ">
			    	</div>
				</div>
				<div class="col-4">
					<div class="form-group">
				    	<label for="exampleFormControlInput1">CPU</label>
					    <input type="text" class="form-control"name="CPU" id="exampleFormControlInput1" placeholder="Nhập CPU">
			    	</div>
				</div>
				<div class="col-4">
					<div class="form-group">
				    	<label for="exampleFormControlInput1">RAM</label>
					    <input type="text" class="form-control"name="RAM" id="exampleFormControlInput1" placeholder="Nhập RAM">
			    	</div>
				</div>
			</div>
			<div class="row">
				<div class="col-4">
					<div class="form-group">
				    	<label for="exampleFormControlInput1">Bộ nhớ trong</label>
					    <input type="text" class="form-control"name="boNhoTrong" id="exampleFormControlInput1" placeholder="Nhập bộ nhớ trong">
			    	</div>
				</div>
				<div class="col-4">
					<div class="form-group">
				    	<label for="exampleFormControlInput1">Thẻ nhớ</label>
					    <input type="text" class="form-control"name="theNho" id="exampleFormControlInput1" placeholder="Nhập thẻ nhớ">
			    	</div>
				</div>
				<div class="col-4">
					<div class="form-group">
				    	<label for="exampleFormControlInput1">Thẻ sim</label>
					    <input type="text" class="form-control"name="theSim" id="exampleFormControlInput1" placeholder="Nhập thẻ sim">
			    	</div>
				</div>
				<div class="col-4">
					<div class="form-group">
				    	<label for="exampleFormControlInput1">Dung lượng pin</label>
					    <input type="text" class="form-control"name="dungLuongPin" id="exampleFormControlInput1" placeholder="Nhập dung lượng pin ">
			    	</div>
				</div>
				<div class="col-4">
					<div class="form-group">
				    	<label for="exampleFormControlInput1">Trọng lượng</label>
					    <input type="text" class="form-control"name="trongLuong" id="exampleFormControlInput1" placeholder="Nhập trọng lượng">
			    	</div>
				</div>
			</div>
	    	<div class="row">
				<div class="col-12" style="text-align:center;margin-top:20px;">
					<button type="submit" class="btn btn-primary">Xác nhận</button>
					<a href="/banphukiendt/admin"><button type="button" class="btn btn-primary">Cancle</button></a>
				</div>
		  	</div>
	  	</form>
	</div>
	<jsp:include page="FooterAdmin.jsp"></jsp:include>