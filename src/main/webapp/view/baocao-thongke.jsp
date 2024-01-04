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

div.row.ml-0 {
	margin-left: 0px;
	margin-right: 0px;
}
</style>
</head>
<body style="margin-top: 100px">
	<div style="width: 1200px; margin: auto">
		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active  text-danger" id="home-tab" data-bs-toggle="tab"
					data-bs-target="#home-tab-pane" type="button" role="tab"
					aria-controls="home-tab-pane" aria-selected="true">FAVORITES</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link  text-danger" id="profile-tab" data-bs-toggle="tab"
					data-bs-target="#profile-tab-pane" type="button" role="tab"
					aria-controls="profile-tab-pane" aria-selected="false">FAVORITES</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link  text-danger" id="contact-tab" data-bs-toggle="tab"
					data-bs-target="#contact-tab-pane" type="button" role="tab"
					aria-controls="contact-tab-pane" aria-selected="false">Contact</button>
			</li>
		</ul>
		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="home-tab-pane"
				role="tabpanel" aria-labelledby="home-tab" tabindex="0">

				<div class="card">
					<table class="table table-hover table-bordered mb-0">
						<thead>
							<tr>
								<th class="text-uppercase text-danger" scope="col">Video Title</th>
								<th class="text-uppercase text-danger" scope="col">Favorites Count</th>
								<th class="text-uppercase text-danger" scope="col">Latest Date</th>
								<th class="text-uppercase text-danger" scope="col">Oldest Date</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td>[S10] Doraemon - Tập 502</td>
								<td>15000</td>
								<td>16/03/2022</td>
								<td>16/03/2023</td>
							</tr>
							<tr>
								<td>[S6] Tuyển Tập Doraemon - Phần 29</td>
								<td>180000</td>
								<td>16/03/2022</td>
								<td>16/03/2023</td>
							</tr>
							<tr>
								<td>[S6] Tuyển Tập Doraemon - Phần 30</td>
								<td>19000000</td>
								<td>16/03/2022</td>
								<td>16/03/2023</td>
							</tr>
							<tr>
								<td>[S7] Tuyển Tập Doraemon - Phần 59</td>
								<td>570000</td>
								<td>16/03/2022</td>
								<td>16/03/2023</td>
							</tr>
							<tr>
								<td>[S7] Doraemon Tập 330</td>
								<td>460000</td>
								<td>16/03/2022</td>
								<td>16/03/2023</td>
							</tr>
							<tr>
								<td>[S7] Tuyển Tập Doraemon - Phần 65</td>
								<td>190000</td>
								<td>16/03/2022</td>
								<td>16/03/2023</td>
							</tr>
							<tr>
								<td>[S7] Doraemon Tập 328</td>
								<td>50000</td>
								<td>16/03/2022</td>
								<td>16/03/2023</td>
							</tr>
						</tbody>
					</table>
					<div class="  float-end card-footer text-muted">
						<span class="float-end">
							<button type="submit" class="btn text-light fw-bold "
								style="width: 130px; background-color: #FF8C00">|<</button>&nbsp;&nbsp;
							<button type="submit" class="btn text-light fw-bold"
								style="width: 130px; background-color: #FF8C00"><<</button>&nbsp;&nbsp;
							<button type="submit" class="btn text-light fw-bold"
								style="width: 130px; background-color: #FF8C00">>></button>&nbsp;&nbsp;
							<button type="reset" class="btn text-light fw-bold"
								style="width: 130px; background-color: #FF8C00">>|</button>&nbsp;&nbsp;
						</span>
					</div>
				</div>

			</div>
			<%-- tab list --%>
			<div class="tab-pane fade" id="profile-tab-pane" role="tabpanel"
				aria-labelledby="profile-tab" tabindex="0">


				<div class="card">
					<div class="row ml-0"
						style="height: 60px; background-color: #7FFFD4;">
						<div class="col-2 mt-2">
							<div class="h4 card-header  text-uppercase fw-bold"
								style="background-color: #7FFFD4; border: none;">VIDEO
								TITLE</div>
						</div>
						<div class="col-10" style="margin-top: 12px">
							<select class="form-select" aria-label="Default select example">
								<option selected>Doraemon</option>
								<option value="1">One Piece</option>
								<option value="2">Your name</option>
								<option value="3">Suzume</option>
							</select>
						</div>
					</div>
					<table class="table table-bordered table-hover mb-0">
						<thead>
							<tr>
								<th class="text-uppercase text-danger" scope="col">Username</th>
								<th class="text-uppercase text-danger" scope="col">Password</th>
								<th class="text-uppercase text-danger" scope="col">Fullname</th>
								<th class="text-uppercase text-danger" scope="col">Email</th>
								<th class="text-uppercase text-danger" scope="col">Role</th>
								<th class="text-uppercase text-danger" scope="col"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Tinhdt</td>
								<td>123</td>
								<td>Đặng Trung Tình</td>
								<td>dangtrungtinh021003@gmail.com</td>
								<td>Admin</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<td>phucplt</td>
								<td>123</td>
								<td>Phan Lê Thành Phúc</td>
								<td>phanlethanhphuc201003@gmail.com</td>
								<td>Admin</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<td>locnt</td>
								<td>123456</td>
								<td>Nguyễn Thành Lộc</td>
								<td>nguyenthanhloc@gmail.com</td>
								<td>Nhân viên</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<td>vongnht</td>
								<td>123456</td>
								<td>Nguyễn Huỳnh Thành Vọng</td>
								<td>nguyenhuynhthanhvonggmail.com</td>
								<td>Nhân viên</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<td>vintb</td>
								<td>12345678</td>
								<td>Nguyễn Thị BÁO Vi</td>
								<td>nguyenthibaovi@gmail.com</td>
								<td>Khách lỏ</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<td>Tinhdt2</td>
								<td>12345678</td>
								<td>Đặng Trung Tình</td>
								<td>dangtrungtinh0210032@gmail.com</td>
								<td>Khách</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<td>phucplt</td>
								<td>12345678</td>
								<td>Phan Lê Thành Phúc 2</td>
								<td>phanlethanhphuc2010032@gmail.com</td>
								<td>Khách</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<td>locnt2</td>
								<td>12345678</td>
								<td>Nguyễn Thành Lộc 2</td>
								<td>nguyenthanhloc2@gmail.com</td>
								<td>Khách</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<td>vongnht2</td>
								<td>12345678</td>
								<td>Nguyễn Huỳnh Thành Vọng 2</td>
								<td>nguyenhuynhthanhvong2@gmail.com</td>
								<td>Khách</td>
								<td><a href="#">Edit</a></td>
							</tr>
						</tbody>
					</table>
					<div class="  float-end card-footer text-muted">
						<span class="float-end">
							<button type="submit" class="btn text-light fw-bold "
								style="width: 130px; background-color: #FF8C00">|<</button>&nbsp;&nbsp;
							<button type="submit" class="btn text-light fw-bold"
								style="width: 130px; background-color: #FF8C00"><<</button>&nbsp;&nbsp;
							<button type="submit" class="btn text-light fw-bold"
								style="width: 130px; background-color: #FF8C00">>></button>&nbsp;&nbsp;
							<button type="reset" class="btn text-light fw-bold"
								style="width: 130px; background-color: #FF8C00">>|</button>&nbsp;&nbsp;
						</span>
					</div>
				</div>

			</div>

			<%-- tab list --%>

			<div class="tab-pane fade" id="contact-tab-pane" role="tabpanel"
				aria-labelledby="contact-tab" tabindex="0">

				<div class="card">
					<div class="row ml-0"
						style="height: 60px; background-color: #7FFFD4;">
						<div class="col-2 mt-2">
							<div class="h4 card-header text-uppercase fw-bold"
								style="background-color: #7FFFD4; border: none;">VIDEO
								TITLE</div>
						</div>
						<div class="col-10" style="margin-top: 12px">
							<select class="form-select" aria-label="Default select example">
								<option selected>Doraemon</option>
								<option value="1">One Piece</option>
								<option value="2">Your name</option>
								<option value="3">Suzume</option>
							</select>
						</div>
					</div>
					<table class="table table-bordered table-hover mb-0">
						<thead>
							<tr>
								<th class="text-uppercase text-danger" scope="col">SENDER NAME</th>
								<th class="text-uppercase text-danger" scope="col">SENDER EMAIL</th>
								<th class="text-uppercase text-danger" scope="col">RECEIVER EMAIL</th>
								<th class="text-uppercase text-danger" scope="col">SENT DATE</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Đặng Trung Tình</td>
								<td>dangtrungtinh021003@gmail.com</td>
								<td>dangtrungtinh021003@gmail.com</td>
								<td>16/03/2023</td>
							</tr>
							<tr>
								<td>Phan Lê Thành Phúc</td>
								<td>phanlethanhphuc201003@gmail.com</td>
								<td>dangtrungtinh021003@gmail.com</td>
								<td>16/03/2023</td>
							</tr>
							<tr>
								<td>Nguyễn Thành Lộc</td>
								<td>nguyenthanhloc@gmail.com</td>
								<td>dangtrungtinh021003@gmail.com</td>
								<td>16/03/2023</td>
							</tr>
							<tr>
								<td>Nguyễn Huỳnh Thành Vọng</td>
								<td>nguyenhuynhthanhvonggmail.com</td>
								<td>dangtrungtinh021003@gmail.com</td>
								<td>16/03/2023</td>
							</tr>
							<tr>
								<td>Nguyễn Thị BÁO Vi</td>
								<td>nguyenthibaovi@gmail.com</td>
								<td>dangtrungtinh021003@gmail.com</td>
								<td>16/03/2023</td>
							</tr>
							<tr>
								<td>Đặng Trung Tình</td>
								<td>dangtrungtinh0210032@gmail.com</td>
								<td>dangtrungtinh021003@gmail.com</td>
								<td>16/03/2023</td>
							</tr>
							<tr>
								<td>Phan Lê Thành Phúc 2</td>
								<td>phanlethanhphuc2010032@gmail.com</td>
								<td>dangtrungtinh021003@gmail.com</td>
								<td>16/03/2023</td>
							</tr>
							<tr>
								<td>Nguyễn Thành Lộc 2</td>
								<td>nguyenthanhloc2@gmail.com</td>
								<td>dangtrungtinh021003@gmail.com</td>
								<td>16/03/2023</td>
							</tr>
							<tr>
								<td>Nguyễn Huỳnh Thành Vọng 2</td>
								<td>nguyenhuynhthanhvong2@gmail.com</td>
								<td>dangtrungtinh021003@gmail.com</td>
								<td>16/03/2023</td>
							</tr>
						</tbody>
					</table>
					<div class="  float-end card-footer text-muted">
						<span class="float-end">
							<button type="submit" class="btn text-light fw-bold "
								style="width: 130px; background-color: #FF8C00">|<</button>&nbsp;&nbsp;
							<button type="submit" class="btn text-light fw-bold"
								style="width: 130px; background-color: #FF8C00"><<</button>&nbsp;&nbsp;
							<button type="submit" class="btn text-light fw-bold"
								style="width: 130px; background-color: #FF8C00">>></button>&nbsp;&nbsp;
							<button type="reset" class="btn text-light fw-bold"
								style="width: 130px; background-color: #FF8C00">>|</button>&nbsp;&nbsp;
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