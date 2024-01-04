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

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- <link rel="stylesheet" type="text/css" href="../css/footer.css"> --> <link rel="stylesheet"
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

.row { -
	-bs-gutter-x: 0rem;
}
.col-5 a:hover {
  color: red;
}


</style>
</head>
<body>
	<div style="width: 1300px; margin: auto; margin-top: 50px; ">
		<div class="card " style=" background-color: #1E293B;opacity: 1;">
			<div class="card-body">
				<form>
					<div class="row">
						<div class="col-7">
							<div class="  mb-3 mt-5 " style="margin-left: 20px;">
								<div style="height: 390px; width: 720px;">
									<img alt="" src="../img/img3.webp" class="img-fluid p-3">
								</div>
							</div>
							<div class="  mb-3 mt-5 mx-3"style=" background-color: #1E293B;opacity: 0.5">
								<input type="text" class="form-control" id="videotitle"
									name="videotitle" style="border-radius: none;"
									placeholder="Tiêu đề">
							</div>
							<div class=" mb-3 mt-0 mx-3"style=" background-color: #1E293B;opacity: 0.5">
								<textarea class="form-control" id="description"
									name="description" rows="6"></textarea>
							</div>
							<div class="bg-muted text-muted"
								style="border-radius: 30px;height: 60px">
								<span class="row" style="padding-right: 30px">
								<div class="col-6 row" style="margin-left: 5px">
								
								<div class="col-4">
								<button type="submit"  class="col-4 btn fw-bold text-light "
										style="width: 130px;font-size: 15px; background-color: blue;border-radius: 35px">
										<i class="fa-solid fa-thumbs-up" style="font-size: 20px"></i>&nbsp;&nbsp;Thích
									</button>
								</div>&nbsp;&nbsp;
								<div class="col-1"></div>
								<div class="col-4">
									<button type="submit"  class="col-4 btn fw-bold text-light ml-3"
										style="width: 130px;font-size: 15px;background-color: red;border-radius: 35px">
										<i class="fa-solid fa-heart" style="font-size: 20px"></i>&nbsp;&nbsp;Theo dỏi
									</button>
									</div>
									
									</div>
									<div class="col-4">
									</div>
									<div class="col-2">
									<button type="submit" class="col-4 bg-secondary btn text-dark fw-bold text-secondary float-start"
										style="width: 130px;font-size: 15px;border-radius: 35px">
										<i class=" fa-solid fa-share text-dark"
											style="font-size: 20px;"></i>&nbsp;&nbsp;Share
									</button>&nbsp;
									</div>
								</span>
							</div>
							
						</div>
						<div class="col-5">
							<div class=" row">
								<div class="col-3">
									<img width="180px" height="120px" style="border-radius: 10px;"
										class="mt-4" alt="" src="../img/nongdan.jpg">

								</div>
								<div class="col-1"></div>
								<div class="col-7 mt-4 ">
									<a class="h5 text-muted" style="text-decoration: none">Isekai
										Nonbiri Nouka, Farming Life in Another World</a><br> <a
										class="h6 text-muted" style="text-decoration: none;">dangtinh</a><br>
									<a class="h6 text-muted" style="text-decoration: none;">1.2M
										view <span class="text-muted" style="font-size: 1em;">•</span>
										1 days <b></b>
									</a>
								</div>
							</div>
							<div class=" row">
								<div class="col-3">
									<img width="180px" height="120px" style="border-radius: 10px;"
										class="mt-4" alt="" src="../img/nongdan.jpg">

								</div>
								<div class="col-1"></div>
								<div class="col-7 mt-4 ">
									<a class="h5 text-muted" style="text-decoration: none">Isekai
										Nonbiri Nouka, Farming Life in Another World</a><br> <a
										class="h6 text-muted" style="text-decoration: none;">dangtinh</a><br>
									<a class="h6 text-muted" style="text-decoration: none;">1.2M
										view <span class="text-muted" style="font-size: 1em;">•</span>
										1 days <b></b>
									</a>
								</div>
							</div>
							<div class=" row">
								<div class="col-3">
									<img width="180px" height="120px" style="border-radius: 10px;"
										class="mt-4" alt="" src="../img/nongdan.jpg">

								</div>
								<div class="col-1"></div>
								<div class="col-7 mt-4 ">
									<a class="h5 text-muted" style="text-decoration: none">Isekai
										Nonbiri Nouka, Farming Life in Another World</a><br> <a
										class="h6 text-muted" style="text-decoration: none;">dangtinh</a><br>
									<a class="h6 text-muted" style="text-decoration: none;">1.2M
										view <span class="text-muted" style="font-size: 1em;">•</span>
										1 days <b></b>
									</a>
								</div>
							</div>
							<div class=" row">
								<div class="col-3">
									<img width="180px" height="120px" style="border-radius: 10px;"
										class="mt-4" alt="" src="../img/nongdan.jpg">

								</div>
								<div class="col-1"></div>
								<div class="col-7 mt-4 ">
									<a class="h5 text-muted" style="text-decoration: none">Isekai
										Nonbiri Nouka, Farming Life in Another World</a><br> <a
										class="h6 text-muted" style="text-decoration: none;">dangtinh</a><br>
									<a class="h6 text-muted" style="text-decoration: none;">1.2M
										view <span class="text-muted" style="font-size: 1em;">•</span>
										1 days <b></b>
									</a>
								</div>
							</div>
							<div class=" row">
								<div class="col-3">
									<img width="180px" height="120px" style="border-radius: 10px;"
										class="mt-4" alt="" src="../img/nongdan.jpg">

								</div>
								<div class="col-1"></div>
								<div class="col-7 mt-4 ">
									<a class="h5 text-muted" style="text-decoration: none">Isekai
										Nonbiri Nouka, Farming Life in Another World</a><br> <a
										class="h6 text-muted" style="text-decoration: none;">dangtinh</a><br>
									<a class="h6 text-muted" style="text-decoration: none;">1.2M
										view <span class="text-muted" style="font-size: 1em;">•</span>
										1 days <b></b>
									</a>
								</div>
								
							</div>
							<div class=" row">
								<div class="col-3">
									<img width="180px" height="120px" style="border-radius: 10px;"
										class="mt-4" alt="" src="../img/nongdan.jpg">

								</div>
								<div class="col-1"></div>
								<div class="col-7 mt-4 ">
									<a class="h5 text-muted" style="text-decoration: none">Isekai
										Nonbiri Nouka, Farming Life in Another World</a><br> <a
										class="h6 text-muted" style="text-decoration: none;">dangtinh</a><br>
									<a class="h6 text-muted" style="text-decoration: none;">1.2M
										view <span class="text-muted" style="font-size: 1em;">•</span>
										1 days <b></b>
									</a>
								</div>
								
							</div>
						</div>

					</div>



				</form>
			</div>



		</div>
	</div>
	<script src="https://kit.fontawesome.com/f61ca73bc8.js"></script>
</body>
</html>