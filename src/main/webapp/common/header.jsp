<%@ page pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg  navbar-dark bg-dark ">
	<div class="container-fluid">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarTogglerDemo03"
			aria-controls="navbarTogglerDemo03" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span> Menu
		</button>
		<div class="collapse row navbar-collapse" id="navbarTogglerDemo03">
			<ul class="navbar-nav col-6 row mb-2 mb-lg-0 mt-1">
				<li class="nav-item col-5"><a class="nav-link active neon "
					style="font-size: 20px; color: red; font-weight: bold;"
					aria-current="page" href="home">&nbsp; ONLINE
						ENTERTAINMENT</a></li>
				<li class="nav-item col-3 mt-1"><a class="nav-link"
					style="font-size: 15px; font-weight: bold;" href="favorite"><i
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
						<c:choose>
							<c:when test="${not empty sessionScope.currentUser}">
								<li><a class="dropdown-item" href="forgotPass"><i
										class="fa-solid fa-key"></i>&nbsp;Quên mật khẩu</a></li>
								<li>
									<hr class="dropdown-divider">
								</li>
								<li><a class="dropdown-item" href="logout"><i
										class="fa-solid fa-right-from-bracket"></i>&nbsp;Đăng xuất</a></li>
								<li><a class="dropdown-item" href="#!taikhoan"><i
										class="fa-sharp fa-solid fa-wrench"></i>&nbsp;Cập nhật tài
										khoản</a></li>
								<li><a class="dropdown-item" href="favorite"><i
										class="fa-sharp fa-solid fa-wrench"></i>&nbsp;Yêu thích </a></li>
								<li><a class="dropdown-item" href="history"><i
										class="fa-sharp fa-solid fa-wrench"></i>&nbsp;Lịch sử xem </a></li>
							</c:when>
							<c:otherwise>
								<li><a class="dropdown-item" href="register"><i
										class="fa-solid fa-registered"></i>&nbsp;Đăng ký</a></li>
								<li><a class="dropdown-item" href="login"><i
										class="fa-solid fa-right-to-bracket"></i>&nbsp;Đăng nhập</a></li>
								<li><a class="dropdown-item" href="forgotPass"><i
										class="fa-solid fa-key"></i>&nbsp;Quên mật khẩu</a></li>

							</c:otherwise>
						</c:choose>


					</ul></li>

			</ul>
			<ul class="col-6 row">
				<li class="col-6"></li>
				<li class="nav-item col-3 mt-3"><a class="nav-link"
					style="font-size: 15px; font-weight: bold; color: #FFFFFF8C"
					href="#!gioithieu"><i class="fa-solid fa-globe"></i> LANGUAGE</a></li>
				<li class="nav-item col-3 mt-3"><a data-bs-toggle="modal" data-bs-target="#changePassModel" class="nav-link"
					style="font-size: 15px; font-weight: bold; color: #FFFFFF8C"
					>Welcome&nbsp;${sessionScope.currentUser.username}</a></li>
			</ul>

			<!-- Modal -->
			<div class="modal fade" id="changePassModel" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Change PassWord</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
						 <div class="form-group mb-3 px-2">
                                
                                <input type="password" class="form-control formcontrol" name="currentPass" id="currentPass" placeholder="currentPassWord">
                            </div>
                            <div class="form-group mb-3 px-2">
                                <input type="password" class="form-control formcontrol" name="newPass" id="newPass" placeholder="newPassWord">
                            </div>
                            <h5 style="color: red" id="messageChangePass"></h5>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								data-bs-dismiss="modal">Close</button>
							<button type="button" id="changePassBtn" class="btn btn-primary">Save
								changes</button>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</nav>
