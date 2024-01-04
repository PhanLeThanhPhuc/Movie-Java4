<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Bootstrap Example</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<style>
header {
	height: 200px;
	background-color: mediumblue;
}

nav.row {
	height: 60px;
	background-color: yellow;
}

footer {
	background-color: gray;
}

.row>article {
	min-height: 300px;
	background-color: darkgray;
}

.row>aside {
	min-height: 300px;
	background-color: cyan;
}

.col-1 {
	width: 13%
}

.breadcrumb-item.active {
	margin-top: 20px;
}

.card-body {
	padding: 0;
}

input[name="search"] {
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
	background-color: rgba(255, 255, 255, 0.8);
	font-size: 18px;
	color: #000;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
}

input[name="search"]::placeholder {
	color: #999;
}
/* CSS cho nút tìm kiếm */
button[type="submit"] {
	background-color: transparent;
	border: none;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
	color: #333;
	font-size: 18px;
	padding: 10px 20px;
	right: 0;
	top: 0;
}

/* CSS cho nút tìm kiếm khi được hover */
button[type="submit"]:hover {
	background-color: #333;
	color: #fff;
	cursor: pointer;
}
</style>
</head>
<body>
	<div>



		<nav class="navbar navbar-expand-lg  navbar-dark bg-dark ">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03"
					aria-controls="navbarTogglerDemo03" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span> Menu
				</button>
				<div class="collapse row navbar-collapse" id="navbarTogglerDemo03">
					<ul class="navbar-nav col-6 row mb-2 mb-lg-0 mt-1">
						<li class="nav-item col-5"><a class="nav-link active neon "
							style="font-size: 20px; color: red; font-weight: bold;"
							aria-current="page" href="index.html">&nbsp; ONLINE
								ENTERTAINMENT</a></li>
						<li class="nav-item col-3 mt-1"><a class="nav-link"
							style="font-size: 15px; font-weight: bold;" href="#!gioithieu"><i
								class="fa-solid fa-file"></i> MY FAVORITES</a></li>


						<li class="nav-item dropdown col-3 mt-1  "><a
							class="nav-link dropdown-toggle"
							style="font-size: 15px; font-weight: bold;" href="#"
							id="navbarDropdown" role="button" data-bs-toggle="dropdown"
							aria-expanded="false"> <i class="fa-solid fa-bars"></i>&nbsp;MY
								ACCOUNT
						</a>
							<ul class="dropdown-menu bg-info text-info"
								aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#!dangky"><i
										class="fa-solid fa-registered"></i>&nbsp;Đăng ký</a></li>
								<li><a class="dropdown-item" href="#!dangnhap"><i
										class="fa-solid fa-right-to-bracket"></i>&nbsp;Đăng nhập</a></li>
								<li><a class="dropdown-item" href="#!quenmatkhau"><i
										class="fa-solid fa-key"></i>&nbsp;Quên mật khẩu</a></li>
								<li>
									<hr class="dropdown-divider">
								</li>
								<li><a class="dropdown-item" href="#"><i
										class="fa-solid fa-right-from-bracket"></i>&nbsp;Đăng xuất</a></li>
								<li><a class="dropdown-item" href="#!doimatkhau"><i
										class="fa-solid fa-right-left"></i>&nbsp;Đổi mật khẩu</a></li>
								<li><a class="dropdown-item" href="#!taikhoan"><i
										class="fa-sharp fa-solid fa-wrench"></i>&nbsp;Cập nhật tài
										khoản</a></li>
							</ul></li>

					</ul>
					<ul class="col-6 row">
						<li class="col-6"></li>
						<li class="nav-item col-3 mt-3"><a class="nav-link"
							style="font-size: 15px; font-weight: bold; color: #FFFFFF8C"
							href="#!gioithieu"><i class="fa-solid fa-globe"></i> LANGUAGE</a></li>
						<li class="nav-item col-3 mt-3"><a class="nav-link"
							style="font-size: 15px; font-weight: bold; color: #FFFFFF8C"
							href="#!gioithieu"><i class="fa-solid fa-bell"></i> THÔNG BÁO</a></li>
					</ul>



				</div>
			</div>
		</nav>

		<div class="row">
			<article class="col-sm-12">
				<div
					style="background-image: url('img/img2.webp'); background-size: 100%; position: relative;">
					<form action="#" method="get"
						style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, 500%) scale(1.5);">
						<input type="text" name="search" placeholder="Tìm kiếm...">
						<button type="submit">Tìm kiếm</button>
					</form>
				</div>
				<img alt="" width="100%" height="700px" src="img/img2.webp">
				<div style="background-color: #1E293B; opacity: 0.9;">
					<div class="container">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mt">
								<li class="breadcrumb-item active text-light"
									aria-current="page">Home</li>
							</ol>
						</nav>



						<hr class="mt-2 text-light mb-5">
						<h2
							class="fw-light text-center text-uppercase text-light fw-bold mt-4 mb-2">
							Phim Đề Cử</h2>
						<hr class="text-light m-auto mb-4"
							style="width: 260px; height: 10px; opacity: 0.5;">
						<div class="row text-center text-lg-start">

							<div class="col-lg-4 col-md-4 col-6" style="">
								<div class="card" style="width: 420px;background-color: #263238">
									<img src="img/anhhung.jpg" class="card-img-top" alt="..."
										style="padding: 20px">
									<div class="card-body">

										<h5 class="h5 card-title text-center text-uppercase"style="color: 	#ccff99;">Kaiko
											Sareta Ankoku Heishi</h5>
										<h5 class="h6 card-title  text-center" style="color: #00FFFF">Thời
											lượng: 12 tập</h5>
										<hr>
										<a href="#" class="btn btn-primary mb-3 ml-3 float-end"
											style="width: 120px; margin-right: 20px"><i class="fa-solid fa-share"></i>&nbsp;Share</a> <a
											href="#" class="btn btn-primary float-end"
											style="width: 120px; margin-right: 15px"><i class="fa-solid fa-thumbs-up"></i> &nbsp;Yêu thích</a>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-6">
								<div class="card" style="width: 420px;background-color: #263238">
									<img src="img/buachu.jpg" class="card-img-top" alt="..."
										style="padding: 20px">
									<div class="card-body">

										<h5 class="h5 card-title text-center text-uppercase"style="color: 	#ccff99;">Saikyou
											Onmyouji no Isekai Tenseiki</h5>
										<h5 class="h6 card-title  text-center"style="color: #00FFFF">Thời
											lượng: 12 tậpr</h5>
										<hr>
										<a href="#" class="btn btn-primary mb-3 ml-3 float-end"
											style="width: 120px; margin-right: 20px"><i class="fa-solid fa-share"></i>&nbsp;Share</a> <a
											href="#" class="btn btn-primary float-end"
											style="width: 120px; margin-right: 15px"><i class="fa-solid fa-thumbs-up"></i> &nbsp;Yêu thích</a>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-6">
								<div class="card" style="width: 420px;background-color: #263238">
									<img src="img/chuate.jpg" class="card-img-top" alt="..."
										style="padding: 20px">
									<div class="card-body">

										<h5 class="h5 card-title text-center text-uppercase"style="color: 	#ccff99;">Kage no Jitsuryokusha ni Naritakute!</h5>
										<h5 class="h6 card-title  text-center"style="color: #00FFFF">Thời
											lượng: 20 tâp</h5>
										<hr>
										<a href="#" class="btn btn-primary mb-3 ml-3 float-end"
											style="width: 120px; margin-right: 20px"><i class="fa-solid fa-share"></i>&nbsp;Share</a> <a
											href="#" class="btn btn-primary float-end"
											style="width: 120px; margin-right: 15px"><i class="fa-solid fa-thumbs-up"></i> &nbsp;Yêu thích</a>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-6 mt-4">
								<div class="card" style="width: 420px;background-color: #263238">
									<img src="img/conan.jpg" class="card-img-top" alt="..."
										style="padding: 20px" height="580px">
									<div class="card-body">

										<h5 class="h5 card-title text-center text-uppercase"style="color: 	#ccff99;">Conam thám tử lừng danh</h5>
										<h5 class="h6 card-title  text-center"style="color: #00FFFF">Thời
											lượng: 1245 tập</h5>
										<hr>
										<a href="#" class="btn btn-primary mb-3 ml-3 float-end"
											style="width: 120px; margin-right: 20px"><i class="fa-solid fa-share"></i>&nbsp;Share</a> <a
											href="#" class="btn btn-primary float-end"
											style="width: 120px; margin-right: 15px"><i class="fa-solid fa-thumbs-up"></i> &nbsp;Yêu thích</a>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-6 mt-4">
								<div class="card" style="width: 420px;background-color: #263238">
									<img src="img/congchua.jpg" class="card-img-top img-fluid"
										alt="..." style="padding: 20px">
									<div class="card-body">

										<h5 class="h5 card-title text-center text-uppercase"style="color: 	#ccff99;">Tensei
											Oujo to Tensai Reijou no Mahou</h5>
										<h5 class="h6 card-title  text-center"style="color: #00FFFF">Thời
											lượng: 12 tập</h5>
										<hr>
										<a href="#" class="btn btn-primary mb-3 ml-3 float-end"
											style="width: 120px; margin-right: 20px"><i class="fa-solid fa-share"></i>&nbsp;Share</a> <a
											href="#" class="btn btn-primary float-end"
											style="width: 120px; margin-right: 15px"><i class="fa-solid fa-thumbs-up"></i> &nbsp;Yêu thích</a>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-6 mt-4">
								<div class="card" style="width: 420px;background-color: #263238">
									<img src="img/aitinh.jpg" class="card-img-top img-fluid"
										alt="..." style="padding: 20px;height: 581px">
									<div class="card-body">

										<h5 class="h5 card-title text-center text-uppercase"style="color: 	#ccff99;">Renai Flops</h5>
										<h5 class="h6 card-title  text-center"style="color: #00FFFF">Thời
											lượng: 12 tập</h5>
										<hr>
										<a href="#" class="btn btn-primary mb-3 ml-3 float-end"
											style="width: 120px; margin-right: 20px"><i class="fa-solid fa-share"></i>&nbsp;Share</a> <a
											href="#" class="btn btn-primary float-end"
											style="width: 120px; margin-right: 15px"><i class="fa-solid fa-thumbs-up"></i> &nbsp;Yêu thích</a>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-6 mt-4 mb-5">
								<div class="card" style="width: 420px;background-color: #263238">
									<img src="img/nongdan.jpg" class="card-img-top" alt="..."
										style="padding: 20px">
									<div class="card-body">
										<h5 class="h5 card-title text-center text-uppercase"style="color: 	#ccff99;">Isekai
											Nonbiri Nouka</h5>
										<h5 class="h6 card-title text-center"style="color: #00FFFF">Thời
											lượng: 13 tập</h5>
										<hr>
										<a href="#" class="btn btn-primary mb-3 ml-3 float-end"
											style="width: 120px; margin-right: 20px"><i class="fa-solid fa-share"></i>&nbsp;Share</a> <a
											href="#" class="btn btn-primary float-end"
											style="width: 120px; margin-right: 15px"><i class="fa-solid fa-thumbs-up"></i> &nbsp;Yêu thích</a>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-6 mt-4 mb-5">
								<div class="card" style="width: 420px;background-color: #263238">
									<img src="img/thienthan.jpg" class="card-img-top" alt="..."
										style="padding: 20px">
									<div class="card-body">

										<h5 class="h5 card-title text-center text-uppercase"style="color: 	#ccff99;" >
											Thiên sứ nhà bên</h5>
										<h5 class="h6 card-title text-center"style="color: #00FFFF">Thời
											lượng: 13 tập</h5>
										<hr>
										<a href="#" class="btn btn-primary mb-3 ml-3 float-end"
											style="width: 120px; margin-right: 20px"><i class="fa-solid fa-share"></i>&nbsp;Share</a> <a
											href="#" class="btn btn-primary float-end"
											style="width: 120px; margin-right: 15px"><i class="fa-solid fa-thumbs-up"></i> &nbsp;Yêu thích</a>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-6 mt-4 mb-5">
								<div class="card" style="width: 420px;background-color: #263238">
									<img src="img/mavuong.jpg" class="card-img-top" alt="..."
										style="padding: 20px">
									<div class="card-body">

										<h5 class="h5 card-title text-center text-uppercase" style="color: 	#ccff99;">Maou
											Gakuin no Futekigousha</h5>
										<h5 class="h6 card-title text-center"style="color: #00FFFF">Thời
											lượng: 13 tập</h5>
										<hr>
										<a href="#" class="btn btn-primary mb-3 ml-3 float-end"
											style="width: 120px; margin-right: 20px"><i class="fa-solid fa-share"></i>&nbsp;Share</a> <a
											href="#" class="btn btn-primary float-end"
											style="width: 120px; margin-right: 15px"><i class="fa-solid fa-thumbs-up"></i> &nbsp;Yêu thích</a>

									</div>
								</div>
							</div>



						</div>

						<div class="row mt-5" style="height: 100px">
							<div class="col-sm-2">
								<button type="button" class="btn btn-primary "
									style="width: 200px;">
									<i class="fa-solid fa-backward-fast"></i>&nbsp;&nbsp;Trang đầu
								</button>
							</div>
							<div class="col-sm-8 text-center">

								<button type="button" class="btn btn-info mt-0"
									style="width: 200px;">
									<i class="fa-solid fa-backward"></i>&nbsp;Trang trước
								</button>
								&nbsp;&nbsp;
								<button type="button" class="btn btn-info" style="width: 200px;">
									Trang kế &nbsp;<i class="fa-solid fa-forward"></i>
								</button>


							</div>
							<div class="col-sm-2">
								<button type="button" class="btn btn-primary"
									style="width: 200px; margin-right: 50px;">
									Trang cuối &nbsp;<i class="fa-solid fa-forward-fast"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
			</article>

		</div>
		<footer class="site-footer">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-6">
						<h6>About</h6>
						<p class="text-justify">Tôi muốn giới thiệu một trang web xem
							video trực tuyến với đa dạng thể loại và chất lượng cao. Trang
							web này cung cấp hàng ngàn video được cập nhật liên tục, được
							phân loại rõ ràng giúp người dùng tìm kiếm và truy cập dễ dàng.

							Trang web có nhiều lựa chọn chất lượng video, từ 360p đến 1080p,
							giúp người dùng xem video trên nhiều thiết bị và địa điểm khác
							nhau với đường truyền internet ổn định. Ngoài ra, trang web còn
							cung cấp các tính năng hữu ích như tạo danh sách phát, chia sẻ
							video, đăng ký kênh yêu thích để nhận thông báo về các video mới
							nhất. Trang web có đa dạng các chủ đề từ giáo dục đến giải trí,
							cùng với các video dài giúp người dùng học hỏi và trải nghiệm thế
							giới mới mẻ. Tóm lại, đây là một trang web xem video trực tuyến
							tuyệt vời cho những ai đam mê xem video và tìm kiếm các nội dung
							đa dạng và chất lượng.</p>
					</div>

					<div class="col-xs-6 col-md-3">
						<h6>phổ biến</h6>
						<ul class="footer-links">
							<li><a href="#">Fatasy</a></li>
							<li><a href="#">Comedy</a></li>
							<li><a href="#">Harem</a></li>
							<li><a href="#">Romance</a></li>
							<li><a href="#">Yuri</a></li>
						</ul>
					</div>

					<div class="col-xs-6 col-md-3">
						<h6>Thông tin</h6>
						<ul class="footer-links">
							<li><a href="#!gioithieu.html">Về chúng tôi</a></li>
							<li><a href="#!gopy.html">Góp ý</a></li>
						</ul>
					</div>
				</div>
				<hr>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-sm-6 col-xs-12">
						<p class="copyright-text">Copyright &copy; 2023 All Rights
							Reserved by Dale</p>
					</div>

					<div class="col-md-4 col-sm-6 col-xs-12">
						<ul class="social-icons">
							<li><a class="facebook" href="#"><i
									class="bi bi-facebook"></i></a></li>
							<li><a class="twitter" href="#"><i class="bi bi-twitter"></i></a></li>
							<li><a class="dribbble" href="#"><i
									class="bi bi-telegram"></i></a></li>
							<li><a class="linkedin" href="#"><i class="bi bi-github"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</footer>

	</div>

	<script src="https://kit.fontawesome.com/f61ca73bc8.js"></script>
</body>
</html>
