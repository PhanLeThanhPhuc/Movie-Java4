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
	<div style="width: 700px; margin: auto">
		<div class="card ">
			<div class="h4 card-header float-left text-uppercase fw-bold" style="background-color: #7FFFD4">LOGIN</div>
			<div class="card-body">
				<form>
					<div class="mb-3 mt-3 mx-3">
						<label for="username" class="form-label">USERNAME:</label> <input
							type="text" class="form-control" id="username" name="username"
							placeholder="Nhập tên đăng nhập">
					</div>
					<div class="mb-3 mx-3">
						<label for="password" class="form-label">PASSWORD:</label> <input
							type="password" class="form-control" id="password"
							name="password" placeholder="Nhập mật khẩu">
					</div>
					<div class="mb-3 form-check mx-3">
						<input type="checkbox" class="form-check-input" style="width: 25px; height: 25px" id="remember-me"
							name="remember-me"> 
							<label class="form-check-label mt-1"
							for="remember-me">&nbsp;REMEMBER ME?</label>
					</div>
				</form>
			</div>

			<div class=" float-end card-footer text-muted">
				<button type="submit" class="btn btn-success float-end" style="width: 100px">LOGIN</button>
			</div>

		</div>
	</div>
	<script src="https://kit.fontawesome.com/f61ca73bc8.js"></script>
</body>
</html>