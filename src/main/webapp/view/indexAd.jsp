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
<link rel="stylesheet" type="text/css" href="../css/footer.css">
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
					<ul class="navbar-nav col-2 row mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active "
							style="font-size: 20px; color: red; font-weight: bold;"
							aria-current="page" href="index.html">&nbsp;ADMINISTRATION
								TOOL</a></li>
					</ul>
					<ul class="col-5"></ul>

					<ul class="col-5 row mt-3" style="list-style-type: none;">
						<li class="col-4"></li>
						<li class="nav-item col-2 text-light"><a class="nav-link"
							style="font-size: 15px; list-style-type: none; font-weight: bold;"
							href="#!gioithieu"><i class="fa-solid fa-file"></i> HOME</a></li>

						<li class="nav-item col-2 text-light"><a class="nav-link"
							style="font-size: 15px; font-weight: bold;" href="#!gioithieu"><i
								class="fa-solid fa-file"></i> VIDEO</a></li>

						<li class="nav-item col-2 text-light"><a class="nav-link"
							style="font-size: 15px; font-weight: bold;" href="#!gioithieu"><i
								class="fa-solid fa-file"></i> USER</a></li>

						<li class="nav-item col-2 text-light"><a class="nav-link"
							style="font-size: 15px; font-weight: bold;" href="#!gioithieu"><i
								class="fa-solid fa-file"></i> REPORTS</a></li>



					</ul>




				</div>
			</div>
		</nav>
		<article>
		<img alt="" width="100%" height="700px" src="../img/img2.webp">
		</article>

	</div>
	<footer class="site-footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-6">
					<h6>About</h6>
					<p class="text-justify">Tôi muốn giới thiệu một trang web xem
						video trực tuyến với đa dạng thể loại và chất lượng cao. Trang web
						này cung cấp hàng ngàn video được cập nhật liên tục, được phân
						loại rõ ràng giúp người dùng tìm kiếm và truy cập dễ dàng. Trang
						web có nhiều lựa chọn chất lượng video, từ 360p đến 1080p, giúp
						người dùng xem video trên nhiều thiết bị và địa điểm khác nhau với
						đường truyền internet ổn định. Ngoài ra, trang web còn cung cấp
						các tính năng hữu ích như tạo danh sách phát, chia sẻ video, đăng
						ký kênh yêu thích để nhận thông báo về các video mới nhất. Trang
						web có đa dạng các chủ đề từ giáo dục đến giải trí, cùng với các
						video dài giúp người dùng học hỏi và trải nghiệm thế giới mới mẻ.
						Tóm lại, đây là một trang web xem video trực tuyến tuyệt vời cho
						những ai đam mê xem video và tìm kiếm các nội dung đa dạng và chất
						lượng.</p>
				</div>

				<div class="col-xs-6 col-md-3">
					<h6>phổ biến</h6>
					<ul class="footer-links">
						<li><a href="#">UI Design</a></li>
						<li><a href="#">PHP</a></li>
						<li><a href="#">Java</a></li>
						<li><a href="#">Android</a></li>
						<li><a href="#">JavaScript</a></li>
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
