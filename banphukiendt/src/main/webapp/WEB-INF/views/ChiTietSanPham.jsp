<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="Header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-6">
			<div style="margin-bottom:30px;">
					 ${SanPham.tenSanPham }
				</div>
				<img class="card-img-top" style="width:465px;height:465px;" src="<c:url value='/recources/hinhanh/${SanPham.hinhAnh}' />" alt="Card image cap">
			</div>
			<div class="col-6">
				<form action="/banphukiendt/chitietsanpham/add/${SanPham.idSanPham}" method="post">	
					<div style="margin-bottom:30px;">
						Giá: ${SanPham.donGia }
					</div>
					<div class="form-group row" style="margin-top:20px;">
				        <div class="col-3" style="margin-top:10px;">
					    	<label>Số lượng:</label>
					    </div>
					    <div class="col-4"">
					      <div class="input-group">
							    <div class="input-group-prepend">
							      	<button id="sub${SanPham.idSanPham}" type="button" class="btn btn-secondary" onclick="giamSoLuong(${SanPham.idSanPham})">-</button>
							    </div>
							    <input type="text" id="soluong${SanPham.idSanPham}" name="soLuong" style="max-width:45px;" value="1" class="form-control">
						    	<div class="input-group-prepend">
						    	  	<button id="add" type="button" class="btn btn-secondary" onclick="tangSoLuong(${SanPham.idSanPham})">+</button>
							    </div>
					    	</div>
					    </div>
					  </div>		
					<button type="submit" class="btn btn-info" style="margin-top:20px;margin-bottom:20px;margin-left:200px;">Mua hàng</button>
				</form>
			</div>
		</div>
		
		<div class="row" style="margin:20px;">
		    <div class="col-6">
		    	 ${SanPham.moTa }
		    </div> 
		    <div class="col-6">
		    	<table class="table">
				  <thead>
				    <tr>
				      <th scope="col" colspan="2">Thông số kỹ thuật</th>
				    </tr>
				  </thead>
				  <tbody>
			  		<tr>
			  			<td>Màng hình</td>
			  			<td>${CauHinhMay.mangHinh}</td>
			  		</tr>
			  		<tr>
			  			<td>Hệ điều hành</td>
			  			<td>${CauHinhMay.heDieuHanh}</td>
			  		</tr>
			  		<tr>
			  			<td>Camera sau</td>
			  			<td>${CauHinhMay.cameraSau}</td>
			  		</tr>
			  		<tr>
			  			<td>Camera trước</td>
			  			<td>${CauHinhMay.cameraTruoc}</td>
			  		</tr>
			  		<tr>
			  			<td>Cpu</td>
			  			<td>${CauHinhMay.cpu}</td>
			  		</tr>
			  		<tr>
			  			<td>Ram</td>
			  			<td>${CauHinhMay.ram}</td>
			  		</tr>
			  		<tr>
			  			<td>Bộ nhớ trong</td>
			  			<td>${CauHinhMay.boNhoTrong}</td>
			  		</tr>
			  		<tr>
			  			<td>Thẻ nhớ</td>
			  			<td>${CauHinhMay.theNho}</td>
			  		</tr>
			  		<tr>
			  			<td>Thẻ sim</td>
			  			<td>${CauHinhMay.theSim}</td>
			  		</tr>
			  		<tr>
			  			<td>Dung lượng pin</td>
			  			<td>${CauHinhMay.dungLuongPin}</td>
			  		</tr>
			  		<tr>
			  			<td>Trọng lượng</td>
			  			<td>${CauHinhMay.trongLuong}</td>
			  		</tr>
				  </tbody>
				</table>
		    </div>
  		</div>
	</div>
	<div class="row">
		<div class="col-12" style="margin-bottom:20px;">
	<script type="text/javascript">
  		function tangSoLuong(id){
  	   		var giaTri = $('#soluong' + id).val();
  	   		var soLuong = parseInt(giaTri);
	  	   		soLuong = soLuong + 1;
	  	   		$('#soluong' + id).val(soLuong);
  	   	}
  	   	
  	   	function giamSoLuong(id){
  	   		var giaTri = $('#soluong' + id).val();
  	   		var soLuong = parseInt(giaTri);
  	   		if(soLuong === 1){
  	   			$('#soluong' + id).val(1);
  	   		}else{
  	   			soLuong = soLuong - 1;
  	   	   		$('#soluong' + id).val(soLuong);
  	   		}
  	   	}
  	   	

		</script>
	<jsp:include page="Footer.jsp"></jsp:include>