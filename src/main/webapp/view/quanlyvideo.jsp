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

.square-radio {
	width: 18px;
	height: 18px;
	border-radius: 0;
	border: 1px solid #6c757d;
}

.square-radio:checked {
	background-color: #6c757d;
	border-color: #6c757d;
}
input[type="text"], input[type="email"], textarea {
   background-color: #F8F9FA;
   border-radius: 10px;
   border: none;
}
input[type="text"], input[type="email"], textarea {
   padding: 10px;
}

#description {
   margin-top: 20px;
}
.card {
   box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}
.btn {
   background-color: #FF8C00;
   border-radius: 20px;
   border: none;
}

</style>
</head>
<body style="margin-top: 100px">
	<div style="width: 1200px; margin: auto">
		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active" id="home-tab" data-bs-toggle="tab"
					data-bs-target="#home-tab-pane" type="button" role="tab"
					aria-controls="home-tab-pane" aria-selected="true">VIDEO
					EDITION</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="profile-tab" data-bs-toggle="tab"
					data-bs-target="#profile-tab-pane" type="button" role="tab"
					aria-controls="profile-tab-pane" aria-selected="false">VIDEO
					LIST</button>
			</li>
		</ul>
		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="home-tab-pane"
				role="tabpanel" aria-labelledby="home-tab" tabindex="0">

				<div class="card ">
					<div class="card-body">
						<form>
							<div class="row">
								<div class="col-5">
									<div class="  mb-3 mt-5 " style="margin-left: 20px;">
										<div style="height: 280px; background-color: #A9A9A9">
											<img alt="" src="../img/bg.webp" class="img-fluid p-3">
										</div>
									</div>
								</div>
								<div class="col-7">
									<div class="  mb-3 mt-3 " style="margin-right: 20px">
										<label for="username" class="form-label">YOUTOBE ID:</label> <input
											type="text" class="form-control" id="username"
											name="username" placeholder="Nhập mật khẩu">
									</div>
									<div class=" mb-3 3" style="margin-right: 20px">
										<label for="password" class="form-label">VIDEO TITLE:</label>
										<input type="email" class="form-control" id="email"
											name="password" placeholder="Nhập email">
									</div>
									<div class=" mb-3 3" style="margin-right: 20px">
										<label for="password" class="form-label">VIDEO COUNT:</label>
										<input type="email" class="form-control" id="email"
											name="password" placeholder="Nhập email">
									</div>
									<div class="row mb-4 mt-4">
										<div class="form-check col-3" style="padding-left: 2.8rem">
											<input class="form-check-input " name="mycheck"
												style="transform: scale(1.7);" type="checkbox" value=""
												id="flexCheckDefault" checked> <label
												class="form-check-label" for="flexCheckDefault">
												ACTIVE </label>
										</div>
										<div class="form-check col-3  ">
											<input class="form-check-input" name="mycheck"
												style="transform: scale(1.7);" type="checkbox" value=""
												id="flexCheckChecked"> <label
												class="form-check-label" for="flexCheckChecked">
												INACTIVE </label>
										</div>
									</div>
								</div>
							</div>

							<div class=" mb-3 mx-4">
								<label for="description" class="form-label">DESCRIPTION:</label>
								<textarea class="form-control" id="description"
									name="description" rows="4"></textarea>
							</div>

						</form>
					</div>

					<div class="  float-end card-footer text-muted">
						<span class="float-end">
							<button type="submit" class="btn text-light fw-bold "
								style="width: 130px; background-color: #FF8C00">Create</button>&nbsp;&nbsp;
							<button type="submit" class="btn text-light fw-bold"
								style="width: 130px; background-color: #FF8C00">Update</button>&nbsp;&nbsp;
							<button type="submit" class="btn text-light fw-bold"
								style="width: 130px; background-color: #FF8C00">Delete</button>&nbsp;&nbsp;
							<button type="reset" class="btn text-light fw-bold"
								style="width: 130px; background-color: #FF8C00">Reset</button>&nbsp;&nbsp;
						</span>
					</div>

				</div>

			</div>
			<%-- tab list --%>

			<div class="tab-pane fade" id="profile-tab-pane" role="tabpanel"
				aria-labelledby="profile-tab" tabindex="0">

				<div class="card">
					<table class="table table-bordered mb-0"  >
						<thead>
							<tr>
								<th scope="col">Youtube id</th>
								<th scope="col">Video Title</th>
								<th scope="col">View Count</th>
								<th scope="col">Status</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">zMwwKYA76S4</th>
								<td>[S10] Doraemon - Tập 502</td>
								<td>1500000</td>
								<td>Ông Tổ Nói Dóc, Truyện Tranh Bay Giữa Trời - Hoạt Hình Tiếng Viêt</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<th scope="row">goeXDWcKh3c</th>
								<td>[S6] Tuyển Tập Doraemon - Phần 29 </td>
								<td>18000000</td>
								<td>Con Voi Và Người Bác, Doraemon Bị Bệnh Nặng</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<th scope="row">T93k6k0RvpM</th>
								<td>[S6] Tuyển Tập Doraemon - Phần 30</td>
								<td>19000000</td>
								<td>Nobita Đắc Đạo Thành Tiên, Đóa Hoa Pinocchio</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<th scope="row">NllKnm8V6sA</th>
								<td>[S7] Tuyển Tập Doraemon - Phần 59</td>
								<td>57000000</td>
								<td>Ngày Sinh Nhật Rỗng Túi Của Suneo, Triệu Phú Nobita</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<th scope="row">xMjq8KvYZ00</th>
								<td>[S7] Doraemon Tập 330</td>
								<td>46000000</td>
								<td>Máy Bay Côn Trùng</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<th scope="row">Xl9PVboyCQM</th>
								<td>[S7] Tuyển Tập Doraemon - Phần 65</td>
								<td>19000000</td>
								<td>Đi Câu Thủy Quái Đầu Trọc, Sự Tích Lột Da</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<th scope="row">sZplZiDOU14</th>
								<td>[S7] Doraemon Tập 328</td>
								<td>50000000</td>
								<td>Hành Tinh Ngược Đời</td>
								<td><a href="#">Edit</a></td>
							</tr>
						</tbody>
					</table>
					<div class="  float-end card-footer text-muted" >
						<span class="float-end">
							<button type="submit" class="btn text-light fw-bold "
								style="width: 130px; background-color: #FF8C00"> |< </button>&nbsp;&nbsp;
							<button type="submit" class="btn text-light fw-bold"
								style="width: 130px; background-color: #FF8C00"> << </button>&nbsp;&nbsp;
							<button type="submit" class="btn text-light fw-bold"
								style="width: 130px; background-color: #FF8C00"> >> </button>&nbsp;&nbsp;
							<button type="reset" class="btn text-light fw-bold"
								style="width: 130px; background-color: #FF8C00"> >|</button>&nbsp;&nbsp;
						</span>
					</div>
				</div>


			</div>
		</div>
	</div>
	<script src="https://kit.fontawesome.com/f61ca73bc8.js"></script>
</body>

<script type="text/javascript">
	
</script>
</html>