<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>quản lý báo</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/login.css">
<link rel="icon" href="img/icon_title.png" type="image/icon type">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
</head>

<body>
	<section>
		<div class="img-bg">
			<img src="img/10_4_16.jpg" alt="background">
		</div>
		<div class="noi-dung">
			<div class="form">
				<h2>Trang Đăng Nhập</h2>
				<form action="login" method='post'>
					<div class="input-form">
						<label for="usr">Tài khoản</label> <input required type="text"
							name="nm" placeholder='Tài khoản' id='usr'>
					</div>
					<div class="input-form">
						<label for="pwd">Mật Khẩu</label> <input required type="password"
							name="pwd" placeholder="Mật khẩu" id='pwd'>
					</div>

					<p style="color: red;">${requestScope.loginError}</p>

					<div class="input-form">
						<input type="submit" value="Đăng Nhập">
					</div>
					<div class="input-form">
						<p>
							Bạn Chưa Có Tài Khoản? <a href="register.jsp">Đăng Ký</a>
						</p>
					</div>
				</form>
			</div>
		</div>
	</section>
</body>

</html>