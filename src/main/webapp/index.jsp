<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin page</title>
<link rel="icon"
	href="https://www.kindpng.com/picc/m/475-4750705_school-administrator-icon-png-transparent-png.png"
	type="image/icon type">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<link rel="stylesheet" href="css/style.css">
<script defer src="script.js"></script>
</head>

<body>
	<div class="container">
		<div class="nav">
			<div class="user">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZEf2pKp2Xid-IYeMSEzKmbC2yObpxTA6yMgUUdfEqP8IOtfi8_r6rwKVigujcdqNPV08&usqp=CAU"
					alt="" class="user-image">
				<div>
					<span class="user-name">User name</span> <span class="user-role">(Admin)</span>
				</div>
			</div>

		</div>
		<div class="content">
			<div class="content-nav">
				<input type="" placeholder="" class="">
				<div>
					<i class="fas fa-sign-out-alt"
						onclick="window.location.href = 'user'"></i> Logout
				</div>
			</div>

			<a href="add_bao.jsp" class="link-style">ADD Bao</a>

			<div class="content-product">
				<table class="products">
					<tr>
						<th width="10%">ID</th>
						<th width="25%">TIEU DE</th>
						<th width="10%">THE LOAI</th>
						<th width="15%">NOI DUNG 1</th>
						<th width="30%">IMAGE</th>
						<th width="10%">ACTION</th>>
					</tr>

					<c:forEach items="${list_Baos}" var="Bao">
						<tr class="product">
							<td>${Bao.id}</td>
							<td>${Bao.tieuDe }</td>
							<td>${Bao.theLoai}</td>
							<td>${Bao.noiDung1 }</td>
							<td><img class="product-image" src="img/${Bao.image}" alt=""></td>
							<td><a btn-link style="color: royalblue"
								href="BaoController?command=DELETE&id=${Bao.id}">DELETE</a> | <a btn-link
								style="color: royalblue"
								href="BaoController?command=LOAD&id=${Bao.id}">UPDATE</a></td>
						</tr>
					</c:forEach>
				</table>

			</div>
			
		</div>
	</div>
</body>

</html>