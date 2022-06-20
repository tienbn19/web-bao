
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="vi">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Báo Game</title>
<link rel="stylesheet" href="css/style2.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

</head>

<!-- #da5550; -->

<body>
	<div class="trang-chu">
		<div class="thanh">
			<a href="home" class="logo-wrap">
				<div class="logo-kieu">GameK</div>
				<div class="tieu-de">Trang thông điện tử tổng hợp</div>
			</a>
			<ul class="thanh-menu">
				<li>Game mobile</li>
				<li>Esports</li>
				<li>khám phá</li>
				<li>Manga/Film</li>
				<li>Tin tức</li>
				<li>Cộng đồng</li>
			</ul>
		</div>

		<div class="thanh_2">
			<ul class="thanh_2_menu">
				<li><a class="logo"> <i class="fas fa-home"></i>
				</a></li>
				<li><a>Gunny origin</a></li>
				<li><a>LMHT</a></li>
				<li><a>Liên quân mobie</a></li>
				<li><a>LMHT: Tốc Chiến</a></li>
				<li><a>Gaming gear</a></li>
				<li><a>Tin online</a></li>
				<li><a>PC/console</a></li>
			</ul>
		</div>

		<div class="noi-dung">
			<div class="noi-dung-trai">
				<c:forEach items="${listBao}" var="bao" begin='${listBao.size()-1}'
					end='${listBao.size()-1}'>
					<a href="item?id=${bao.id}">
						<div class="tin1">
							<img src="img/${bao.image }" alt="">
							<div class="tieu-de-tin-hot">${bao.tieuDe}</div>
						</div>
					</a>
				</c:forEach>
				<div class="luoi-moi">

					<c:forEach items="${listBao}" var="bao" begin='0' end='5'>
						<div class="moi-tin">
							<a href="item?id=${bao.id}"> <img src="img/${bao.image }"
								alt=""> <span class="nhan">${bao.theLoai}</span>
								<p>${bao.tieuDe}</p>
							</a>
						</div>
					</c:forEach>

				</div>

			</div>
			<div class="noi-dung-right">

				<c:forEach items="${listBao}" var="bao" begin='${listBao.size()-2}'
					end='${listBao.size()-2}'>
					<a href="item?id=${bao.id}">
						<div class="tin1">
							<img src="img/${bao.image}" alt="">
							<div class="tieu-de-tin-hot">${bao.tieuDe}</div>
						</div>
					</a>
				</c:forEach>
				<div class="canh">
					<p class="kieu-canh">Bài viết đáng chú ý</p>
					<c:forEach items="${listBao}" var="bao" begin='0' end='6'>
						<a href="item?id=${bao.id}">
							<div class="canh-tin">
								<img src="img/${bao.image}" alt="">
								<p class="tieu-de-dang-chu-y">${bao.tieuDe}</p>
							</div>
						</a>
					</c:forEach>


				</div>
			</div>
		</div>

		<div class="">
			<h2 class="top">
				<a href="#">MỚI CẬP NHẬT</a>
			</h2>
			<c:forEach items="${listBao}" var="bao">
				<a href="item?id=${bao.id}">
					<div class="tin-cap-nhat">
						<img src="img/${bao.image}" alt="">
						<h3 class="tieu-de-tin-moi">${bao.tieuDe}</h3>
					</div>
				</a>
			</c:forEach>
		</div>
	</div>
</body>

</html>