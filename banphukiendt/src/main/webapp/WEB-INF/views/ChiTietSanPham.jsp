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
	<div class="container">
		<div class="row">
			<div class="col-6">
				<img class="card-img-top" style="width:465px;height:465px;" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxATEhUQEA8RDhAQEg8SFRgVEBARGBYVFhEXGBUSExgYHiggGB0lJxcVIjEhJSkrLi4uFyAzODMsNzQuLisBCgoKDg0OGxAQGy0lICUvLS8tLS8tLS0xLS0tLS8tLy4tNS0tLS0tLS0tLS0tNS4tLS8tLS8tLS0tLS0tLS0tLf/AABEIAMMBAgMBEQACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAABQYBBAcDAv/EAEoQAAIBAQMHBggLBgUFAAAAAAABAgMEBREGEiExQVFxEyJhgZGhBzJCVHKTwdEVIzNSU2KSo7Gy0hQWNHOi8SRDgoPwRGOz4eL/xAAbAQEAAgMBAQAAAAAAAAAAAAAABAUCAwYBB//EADQRAQACAQICBwgBAwUBAAAAAAABAgMEESExBRJBUVJxkRMUImGBobHRMhUzNELB4fDxI//aAAwDAQACEQMRAD8A7iAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPC1WylTWdVqQpLfOcYrvMZtEc5Z0x3vO1YmfJD2nLOwQ/z89/UhOfelh3mqdTjjtTcfReqvypt57Q0KnhCsa1Qry4Qp+2aMJ1eP5pEdCamee0fX/h8x8Ilk+itK/0Uv1nnvlO6Xs9B6jvr6z+m1Ry7sMtc6lP0qU3+XEzjVY5ardD6qOURP1hK2O/bJV0U7RSk3sz0pfZek21yUtylDy6TPi/nSY+iRM0cAAAAAAAAAAAAAAAAAAAAAAAAAAABW77yystBuEX+0VVozYNYJ7pS1LgsX0EfJqKU4c5WWl6Lz5+PKO+f0pN6ZaWyriozVng9lPQ+ub09mBDvqb25cF9g6I0+LjaOtPz/X/qvVJuTzpNyk9bk3J9r0miZmeazrWKxtWNo+XB8nj0AAADQEld1+2qh8lXnFLyW8+PDNlil1YGyua9eUombQ4M386x5xwlcbn8IUXhG1U8x/Pp4yj1w1rqxJePVxPC0KTU9B2rxwzv8p5/r8LpZbVTqRU6c41IS1OLTRMi0TG8KO9LUt1bRtL2PWIAAAAAAAAAAAAAAAAAAAAABp3peVKzwdStNQitC2tv5sVtZhe8UjeW3BgyZrdSkby5llFlhXtGMIY0KGrNT50l9eS/KtHErsuotfhHCHVaPorHg+K/xW+0eStojrUAAAAAAAAAAN66b2r2eefRm4N61rjLolHb+PSZ0yWpO8I+o0uLUV6uSP3Hk6dkzlVStSzH8VXS0wb8be6b2ro1rvLLFnrk4drk9b0dk007869/7WE3q8AAAAAAAAAAAAAAAAAAACMv6+qVlp8pUeLeKhFPTOW5dG97DXkyRjjeUnS6S+pydSn1nucjvi9q1pqOrVli9UYrHNgvmxXt1sqsmS153l2Wm0uPT06lI857ZaJgkgAAAAAAAAAAAAb1zWCtWqxp0MVUxUs5NrMSfjtrVgZ46WtbaqNqs+LDjm2Xl3d7tNkpyjCMZzdSUYpSk0o5zS0ywWhYlxEbRxcNeYm0zEbR3PY9YgAAAAAAAAAAAAAAAABqXpb6dClKtUeEILHpb2RXS3oMb3isby24cN814pTnLjl9XrUtNV1aj6Ixx0Qjsiva9rKjJkm9t5dtpNLTTY4pX6z3tAwSQAAAAe1lslSo8KVOdV/UhKeHHDUZRW1uUNeTNjx8b2iPOUtSyRvCWqzSS+tOlHucse42xp8k9iHbpXSV/wBfpE/p6TyLvBf9OpcKtH2yR7OmydzGOl9J4vtKPtdyWulpqWarFb8xyXW44o12xXrzhIx63T5OFbx+Pyj0zWlAADcuq7atoqKlSjjJ6W9kVtlJ7EjOlJvbaEfU6imnpN7/APrruT9yUrLT5OmsZPBzm1pnLf0LctneWuLFGONocbq9XfU361vpHclDYigAAAAAAAAAAAAAAAAAA5Vl5fvL1uSg/iaDaW6VTVKfBaUuveVmpy9a20codb0Ro/Y4/aW/lb7R/wAquRluAAAG7dV1VrRPk6MM97XqjFb5PZ+O7Ezpjtedqo+o1WLT162Sf3Pk6FcmQlnp4Sr/AOJqbnoguEfK6+xE/Hpa1/lxc1qemc2Xhj+GPv6/pa6VKMUoxioRWpJJJcEiTEbclTNptO8vs9eMYAZAiL3ybstoxdSkozflw5k+La8brxNV8NL84S9Prs+D+FuHdPGHO8o8kq1mxnH46gvKSwcV/wByOzitHAgZdPbHxjk6bRdKY9R8M/Dbu7/L9Im6rtq2ioqVKOMnpb2RW2UnsRqpSbztCZqdRTT069//AF13J+5KVlp8nT0yeDnNrTOW/oW5bO8tceOMcbQ4zV6u+pv1rfSO5KGxFAAAAAAAAAAAAAAAAAABG5QWhwoyUZZk6icItaXFteMuHuK7pPWxpcPW7Z4QlaTH18sbxvEcZcdttinSlmzXBrU10MrdPqKZ69artcWWuSN6tY3toAAl8m7hqWupmx5lOODqTw8Vbo75PZ28duHFOSfkha7W00tN542nlH7+Trd2XdSoU1SowUIrtb2yk9r6S1rSKxtDjc2e+a83vO8tsyagAAAAAMOKeh6UBp3bdNChnKhTjTz5Z0sN+xdCWxakYVpWvKG7NqMmbb2k77N0zaQAAAAAAAAAAAAAAAAAAAKtlFaM6rm7Kaw63pfs7DientR7TUezjlX8yuNDj6uPrd6Hr0Izi4zSlF/8xW5lPjy2x261Z2lOraazvCrXpdEqXOjjOnv2x9L3nR6TX0zfDbhb8rTBqYvwnmjCelNiw2SdapGlTWM6klFe1voSxb6EZVrNp6sNebLXFjm9uUOz3LddOzUo0aeqOlvbKT1yfHu0It6UildocNqNRbPknJbt+zeM2gAAAAAAAAAAAAAAAAAAAAAAAAAAAAA+ZywTb1LSY2tFazM9j2I34KNVqOUnJ65NvteJ8zy5JyZLXntnd0VK9WsVjsfJrZMHsTsIG9bj1zorjD9Hu/sXWj6S/wBGX1/adg1e3w39U/4M7q+UtU1pxdKGK1YYZ77cF1M6nR0iY6/orOm9TvNcNfOf9v39V9JznwAAAAAAAAAAAAAAAAAAAAAAAAAAAAABqXtPCjN/Va7dHtIPSWTqaXJaO78t2nr1stYU0+dr8AAYAut3UMynGO6Kx4vS+/E+kaLD7HT0p3RDns1+vkmWySmsAAAMMDlmUV62mNqrRjaK0IxqSSSqzSS3JJ6DpdJpsNsFZmsb7dynz5skZLREyj/hm1+dWj11T3kn3TB4I9Gr2+TxT6sfDNr86tHrqnvHumDwR6Ht8nin1Phm1+dWj11T3j3TB4I9D2+TxT6nwza/OrR66p7x7pg8Eeh7fJ4p9T4ZtfnVo9dU9490weCPQ9vk8U+p8M2vzq0euqe8e6YPBHoe3yeKfU+GbX51aPXVPePdMHgj0Pb5PFPqfDNr86tHrqnvHumDwR6Ht8nin1Phm1+dWj11T3j3TB4I9Hnt8nin1dZue0OpQpVG8XOlTk+LisTlc1OpktXumV3jt1qRLcNbMAAAAAAAAAAAEblC/iJdLh+ZP2FR05O2jt5x+UrRR/8AaPqqhwi7AAH1RjjKK3yiu1m3BXrZax84/LC87VmfkvaPpkOdD0AAAAByDKf+Lr/zZHWaL/Hp5KPUf3beaLJTSAAAAAAAAAOs5GzxsdF7oyj9mcl7DlNdG2ov5rvTTviqmiI3gAAAAAAAAAAAjcoV8S/Sh+Yp+nf8O3nH5S9F/ej6qocKugAB92d4Ti90ovvRu087ZqT84/LDJG9Jj5Lyj6Y51kAAAAAOQZT/AMXX/myOs0X+PTyUeo/u280WSmkAAAAAAAAAdVyH/gqP+9/5pnLdI/5Nvp+IXOk/s1+v5TxCSQAAAAAAAAAAAaN9QxoTW5J/ZafsK7panX0d4+W/o36adstVQPny+AAGD2J2neHi8WSrnQjL50YvtR9L02SMuKt47YhzuSvVtNe57G5iAAAADkGU/wDF1/5sjrNF/j08lHqP7tvNFklpAAAAegAAAAOt5JU82x0FvpqX2m5e05LWzvqL+a700bYq+SYIzeAAAAAAAAAAAD4rQzouL1STXajXlpF6TWe2NntZ2mJUVprQ9a0PifM7VmtprPZwdHE7xuGL0PRH3lecafNXOqbti6Ze4sdF0dfUfFbhXv7/ACVPSHStNLHVrxt3d3msOQF7OrTnSqSxqUpOS1LGEniux5y7DtdHSuPHGOvKFJpdVbP1pvPHdbCWmAAAAAhrVkvY6k5VJ0c6c23J8pWWL4KWBKprs9KxWtuEfKGi2mxWneYeX7n2Dzf72v8AqM/6jqfF9o/Tz3TD4fyfufYPN/va/wCof1HU+L7R+j3TD4fyfufYPN/va/6h/UdT4vtH6PdMPh/J+59g83+9r/qH9R1Pi+0fo90w+H8o7KLJ2w0LNVqxo5s4xag+VrPny5sXg5adLRv0us1GXNWs2+0cu3sas+DFTHM7flzs6JVAAAzwdrsFDk6VOn9HThD7MUjjclutebd8ugpG1YhsGDIAAAAAAAAAAABgVG/KGZVlunzl16+/E4PprT+x1Vp7LcY/3+670eTrYo+XBHlVHHgkzMRG8oS8r51wovjL9Pv/ALl/oeieV83p+/05npHpvnj0/wBbfr9oRsv4iIjaHMzMzO8t647zlZ60a0cWlokvnQfjR9q6UjOlurbdtwZZxXi3/dnYbNXjUhGpCSlCaUotbUywid+Loa2i0bw9QyAAAAAAAAAFC8I16JuFli/FaqVOOHMj3t9cS76Jwc8s+UK3XZOVI+qkl2rwABJZOWTlbTRp61yik/Rhznj2YdZF1mT2eC1v+8W3BXrZIh2E5NegAAAAAAAAAAAAAIfKaguSdX6FOT0Y83Dne/qKbpnQzqcUTSPij8TzSdNqa4ZmbctnMryvSVTmrm0921+l7iHoujqaeOtbjb8eSj6R6Wyar4K8Kd3f5/pHlkqQ9ACz5HZS/s75Gq3+zyeKevk5PW/Re3t3m7Fl6vCeSdpNV7Oerbl+HTITTSaaaaTTTxTT1NMmLqJieT6D0AAAAAABEZR35Cy0854SqSxVOG973uitrJOl0ts99o5dstGfNGKu/a5PaK0pylObcpzblJva2dVSlaViteUKW1ptO8vMzeAAC7+De79NS0talyUOLwlN/lXaUnS+b+OOPOf9lhocfO6+FIsgAAAAAAAAAAAAAGJRTWDWKegEuQ5TXO7NXcEnycsZU39XHxeK1dj2kDLTqy57U4fZX27OxEmCOAAAE9k7lPWs3MfxtD5jemO903s4auGs2UyzXgl6fV2xcOcdzot0X5Z7QsaVROW2D5s1xj7VoJdbxbkuMWemWPhlJGbcAAAGJPBYvQkBVr9y0o0k4UMLRV1Yp8yPGS8bgu1Gv21K2jfj37IObXUpwrxn7Oe222VK03Uqzc5y1t9yS2LoOw0d8NsUTh5f95/NW2yTeetMvAksQ9AD0oUZTlGEFnTnJRit7bwRhe8UrNrcoe1rNp2h2K57vjQowox05kcG98nplLreLORz5Zy5JvPavcVIpWKw3TU2AAAAAAAAAAAAAAAEVlHc0bVRdN4RmudTl82XT0PUzDJSLRs0ajDGWnV9HJLTZ505yp1IuE4NqSex/wDNpBmNp2lz9qzWZiXkeMQAAAzFtNNNprSmng096ewQ9iZid05YcrrbS0cqqqWypHP/AKtEu82VzXhKprc1OG+/ml6PhCqeXZoS9GpKPc0zZGonub46St21esvCG9lkXXW/+B7x8mX9S7q/dpWnL21S8SnRp9UpvqbaXceTnt2Ndukck8oiEDeF72iv8tWnNbsc2P2Vgu41Te085RL58mT+UtEwamUSNNqcmnv18c/8+b2J2ZOx0PSOPVRtHC3d+myJ3CeyD0XvIC48P8XUWlpqknueh1OvUujHeih6T1fW/wDlX6/pZaPBt8c/ReCnWAAAAAAAAAAAAAAAAAAVzK3JuNpjnwwjaILBPUpr5kvY9hqyYotx7UTVaWMsbxzhzGtSlCThOLhOLwkmsGnuZCmNuEqK1ZrO083mHgAAAAAAAAAAAMntbTWYtWdpGUzqOj+mIybY83Ce/v8A1LZFt1kyRybdolytVYWeL9Y15K6N76t+EzX62MUdSk/FP2TtNp5vPWty/Lp0YpLBLBLQsDnFuyAAAAAAAAAAAAAAAAAAAEJlHk5StUcX8XWisIzS/pkvKX4bDXkxxZG1Gmrmj597md7XVWs88ytDNx8WS0xl0xe3hrIdqTWeKky4b4p2tDRMWoAAAAAAAAAAAFvyZyNnUwq2lOnS1qGlSn6W2K7+Bvx4d+NljptDNviycu50OlTjFKMUoxikkksEktSSJa3iIiNofYegAAAAAAAAAAAAAAAAAAAAPG12WnUi4VIRqQetSSa4/wDs8mInhLG9YtG1oUq+cgtcrLP/AG5vujP2PtI9sHhVmbo7txz9JU63XfWovNrUp0n9ZaH6MtT6mR5rNecK++O9J2tGzWPGsAAAAAABN3Vkta6+DVPkYPyqicOyPjPsw6TZXFaUrFo8uTs2j5r1ceSdns+E2uWqry5JaH9SOqPHS+klUxRVaYNHTFx5ysBsSwAAAAAAAAAAAAAAAAAAAAAAAAAfFSmpJxklKL1ppNPimHkxE8JQdtyPsVTTyPJPfTk4f0+L3GqcVZ7Ea+iw27NvJD2jweR/y7TKPp04z74uP4GudPHZKNbo2P8ATb7NKfg+r7K9J8VOPvMfd572v+m37LQ+V4P7R9NR+89w93nvef02/ih70vB5PyrVFcKTl+Mke+7/ADZR0bPbb7JKy5A2aOmpUq1ejGMF3LHvM4wVb69HY45zMp2wXLZqPyVCEH87DOl9p4vvNsUrHKEqmDHT+MJAybQAAAAAAAAAAAAAGkrw25j09K4AP2/6jfBpgFbn9HIDZs9XOipJYY49zwA9AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAArqm9WLw1gZ5aW9gfU6stGl6l7QJa7fk4/6vzMDZAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/2Q==" alt="Card image cap">
			</div>
			<div class="col-6">
				<div style="margin-bottom:30px;">
					Ten san pham
				</div>
				<div style="margin-bottom:30px;">
					Giá
				</div>
				<div class="form-group row" style="margin-top:20px;">
			        <div class="col-3" style="margin-top:10px;">
				    	<label>Số lượng:</label>
				    </div>
				    <div class="col-4"">
				      <div class="input-group">
						    <div class="input-group-prepend">
						      	<button id="sub${item.idSanPham}" type="button" class="btn btn-secondary" onclick="giamSoLuong(${SanPham.idSanPham})">-</button>
						    </div>
						    <input type="text" id="soluong${SanPham.idSanPham}" name="soLuong" style="max-width:45px;" value="1" class="form-control">
					    	<div class="input-group-prepend">
					    	  	<button id="add" type="button" class="btn btn-secondary" onclick="tangSoLuong(${SanPham.idSanPham},${SanPham.soLuong},${SessionCart.soLuong})">+</button>
						    </div>
				    	</div>
				    </div>
				  </div>		
				<button type="submit" class="btn btn-info" disabled style="margin-top:20px;margin-bottom:20px;margin-left:200px;">Mua hàng</button>
			</div>
		</div>
		
		<div class="row" style="margin:20px;">
		    <div class="col-6">
		    	 dgjjkhsgkghdktg
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
			  			<td>${CauHinhMay.manghinh}</td>
			  		</tr>
			  		<tr>
			  			<td>Hệ điều hành</td>
			  			<td>${CauHinhMay.hedieuhanh}</td>
			  		</tr>
			  		<tr>
			  			<td>Camera sau</td>
			  			<td>${CauHinhMay.camerasau}</td>
			  		</tr>
			  		<tr>
			  			<td>Camera trước</td>
			  			<td>${CauHinhMay.cameratruoc}</td>
			  		</tr>
			  		<tr>
			  			<td>Kích thước màn hình</td>
			  			<td>${CauHinhMay.kichThuocManHinh}</td>
			  		</tr>
			  		<tr>
			  			<td>Độ phân giải màn hình</td>
			  			<td>${CauHinhMay.doPhanGiaiManHinh}</td>
			  		</tr>
			  		<tr>
			  			<td>Loại màn hình</td>
			  			<td>${CauHinhMay.loaiManHinh}</td>
			  		</tr>
			  		<tr>
			  			<td>Trọng lượng</td>
			  			<td>${CauHinhMay.trongLuong}</td>
			  		</tr>
			  		<tr>
			  			<td>Kích thước</td>
			  			<td>${CauHinhMay.kichThuoc}</td>
			  		</tr>
			  		<tr>
			  			<td>OS</td>
			  			<td>${CauHinhMay.os}</td>
			  		</tr>
			  		<tr>
			  			<td>Pin</td>
			  			<td>${CauHinhMay.pin}</td>
			  		</tr>
				  </tbody>
				</table>
		    </div>
  		</div>
	</div>
	<div class="row">
		<div class="col-12" style="margin-bottom:20px;">
			SO SÁNG SẢN PHẨM
		</div>
	</div>
	<div class="row">
		<div class="col-4">
			<div class="card" style="width: 18rem;">
			  <img class="card-img-top" src="..." alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">Tên sản phẩm</h5>
			    <h5 class="card-title">Đơn giá: 10100000</h5>

			    <a href="/banphukiendt/chitietsanpham" class="btn btn-primary">So Sánh</a>
			  </div>
			</div>
		</div>
		<div class="col-4">
			<div class="card" style="width: 18rem;">
			  <img class="card-img-top" src="..." alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">Tên sản phẩm</h5>
			    <h5 class="card-title">Đơn giá: 10100000</h5>

			    <a href="/banphukiendt/chitietsanpham" class="btn btn-primary">So Sánh</a>
			  </div>
			</div>
		</div>
		<div class="col-4">
			<div class="card" style="width: 18rem;">
			  <img class="card-img-top" src="..." alt="Card image cap">
			  <div class="card-body">
			   <h5 class="card-title">Tên sản phẩm</h5>
			    <h5 class="card-title">Đơn giá: 10100000</h5>

			    <a href="/banphukiendt/chitietsanpham" class="btn btn-primary">So Sánh</a>
			  </div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>