<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bao Game</title>
<link rel="stylesheet" href="css/style3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
</head>
<body>
	<div class="trang-chu">
		<div>
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
		</div>

		<div class="dieu-huong">
			<div class="ten-dieu-huong">GameK</div>
			<span class="icon-dieu-huong">></span>
			<div class="ten-dieu-huong">${Bao.theLoai}</div>
		</div>

		<div>
			<h1 class="tieu-de-tin">${Bao.tieuDe}</h1>
			<div class="gach-ngan-cach"></div>

			<div class="khung-noi-dung">
				<%-- <div class="noi-dung-ben-trai">
					<div class="canh">
						<p class="kieu-canh">Bài viết đáng chú ý</p>
						<c:forEach items="${listBao}" var="bao">
							<div class="canh-tin">
								<img src="img/${bao.image}" alt="">
								<p class="tieu-de-dang-chu-y_tin-chi-tiet">${bao.tieuDe}</p>
							</div>

						</c:forEach>
					</div>
				</div> --%>

				<div class="noi-dung-ben-phai">
					<div class="noi-dung-nho">${Bao.noiDung1}</div>

					<img class="anh-tin-chi-tiet" src="img/${Bao.image}"
						alt="Ảnh tin chi tiết">

					<p>${Bao.noiDung2}</p>
				</div>

			</div>

			<div class="cung-chuyen-muc">
				<h1>Cùng chuyên mục</h1>
				
					<a class="tin-cap-nhat" href="./news-detail.html"> <img
						src="https://gamek.mediacdn.vn/zoom/310_200/133514250583805952/2022/5/15/280362532-10228164441311799-3239723585848174810-n-6b0d5040a27f5b4a7a42b8e5a33bf16b600x400-1652627810823965656450.jpg"
						alt="">
						<h3 class="tieu-de-tin-moi">Xuất hiện tựa game 4vs 4 PvP bắt
							ma siêu cuốn, tái hiện một thời hào hùng của chế độ bắn ma trong
							Đột Kích</h3>
					</a>
					<c:forEach items="${listBaonews}" var="b">
						<a class="tin-cap-nhat" href="item?id=${b.id}"> <img
							src="img/${b.image}" alt="">
							<h3 class="tieu-de-tin-moi">${b.tieuDe}</h3>
						</a>
					</c:forEach>
				
			</div>

		</div>
	</div>
</body>
</html>