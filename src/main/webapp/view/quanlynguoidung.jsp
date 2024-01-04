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
			<div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
  <div class="card">
    <div class="card-body">
      <form autocomplete="off">
        <div class="row mb-3">
          <div class="col-md-6 mt-3">
            <div class="form-floating" style="margin-left: 20px">
              <input type="text" class="form-control" id="username" name="username" placeholder="Nhập tên đăng nhập">
              <label for="username"><i class="fas fa-user"></i> USERNAME</label>
            </div>
          </div>
          <div class="col-md-6 mt-3">
            <div class="form-floating" style="margin-right: 20px">
              <input type="password" class="form-control" id="password" name="password" placeholder="Nhập mật khẩu">
              <label for="password"><i class="fas fa-lock"></i> PASSWORD</label>
            </div>
          </div>
        </div>
        <div class="row mb-3">
          <div class="col-md-6 mt-3">
            <div class="form-floating" style="margin-left: 20px">
              <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Nhập full name">
              <label for="fullname"><i class="fas fa-id-card"></i> FULLNAME</label>
            </div>
          </div>
          <div class="col-md-6 mt-3">
            <div class="form-floating" style="margin-right: 20px">
              <input type="email" class="form-control" id="email" name="email" placeholder="Nhập email">
              <label for="email"><i class="fas fa-envelope"></i> EMAIL ADDRESS</label>
            </div>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-md-4 text-center mb-3" >
            <button type="submit" class="btn btn-primary w-100" style="background-color: #FF8C00; border-color: #FF8C00"><i class="fas fa-user-plus"></i> SIGN UP</button>
          </div>
        </div>
      </form>
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
								<th scope="col">Username</th>
								<th scope="col">Password</th>
								<th scope="col">Fullname</th>
								<th scope="col">Email</th>
								<th scope="col">Role</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">Tinhdt</th>
								<td>123</td>
								<td>Đặng Trung Tình</td>
								<td>dangtrungtinh021003@gmail.com</td>
								<td>Admin</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<th scope="row">phucplt</th>
								<td>123</td>
								<td>Phan Lê Thành Phúc</td>
								<td>phanlethanhphuc201003@gmail.com</td>
								<td>Admin</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<th scope="row">locnt</th>
								<td>123456</td>
								<td>Nguyễn Thành Lộc</td>
								<td>nguyenthanhloc@gmail.com</td>
								<td>Nhân viên</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<th scope="row">vongnht</th>
								<td>123456</td>
								<td>Nguyễn Huỳnh Thành Vọng</td>
								<td>nguyenhuynhthanhvonggmail.com</td>
								<td>Nhân viên</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<th scope="row">vintb</th>
								<td>12345678</td>
								<td>Nguyễn Thị BÁO Vi</td>
								<td>nguyenthibaovi@gmail.com</td>
								<td>Khách lỏ</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<th scope="row">Tinhdt2</th>
								<td>12345678</td>
								<td>Đặng Trung Tình</td>
								<td>dangtrungtinh0210032@gmail.com</td>
								<td>Khách</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<th scope="row">phucplt</th>
								<td>12345678	</td>
								<td>Phan Lê Thành Phúc 2</td>
								<td>phanlethanhphuc2010032@gmail.com</td>
								<td>Khách</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<th scope="row">locnt2</th>
								<td>12345678</td>
								<td>Nguyễn Thành Lộc 2</td>
								<td>nguyenthanhloc2@gmail.com</td>
								<td>Khách</td>
								<td><a href="#">Edit</a></td>
							</tr>
							<tr>
								<th scope="row">vongnht2</th>
								<td>12345678</td>
								<td>Nguyễn Huỳnh Thành Vọng 2</td>
								<td>nguyenhuynhthanhvong2@gmail.com</td>
								<td>Khách</td>
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