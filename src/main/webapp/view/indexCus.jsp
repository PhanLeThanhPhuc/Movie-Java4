<%@ page pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Home</title>
<%@ include file="/common/head.jsp"%>
</head>
<body>
	<div>
 
		<%@ include file="/common/header.jsp"%>

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
							Video Đề Cử</h2>
						<hr class="text-light m-auto mb-4"
							style="width: 260px; height: 10px; opacity: 0.5;">
						<div class="row text-center text-lg-start">
							<c:forEach var="video" items="${videos}">
							<div class="col-lg-4 col-md-4 col-6 mt-3" style="">
								<div class="card"
								
									style="width: 420px; background-color: #263238">
									<a href="<c:url value='/video?action=watch&id=${video.href}'></c:url>">
									<img src="<c:url value='${video.posster}'></c:url>" class="card-img-top" alt="IMAGE"
										style="padding: 20px"></a>
									
										
									<div class="card-body">

										<h5 class="h5 card-title text-center text-uppercase"
											style="color: #ccff99; white-space: nowrap;overflow: hidden;">${video.title}</h5>
											<h5 class="h6 card-title  text-center" style="color: #00FFFF">View ${video.views}</h5>
										
									</div>
								</div>
							</div>
							</c:forEach>
							
						</div>



					</div>

					<div class="row mt-5" style="height: 100px">
						<div class="col-sm-2">
						<!--  -->
						<c:if test="${currentPage == 1}">
							<button type="button" class="btn btn-primary "
								style="width: 200px;" disabled="disabled">
								<i class="fa-solid fa-backward-fast"></i>&nbsp;&nbsp;Trang đầu
							</button>
						</c:if>
						<c:if test="${currentPage > 1}">
							<button type="button" class="btn btn-primary "
								style="width: 200px;" ><a href="" style="color: white;">Trang đầu</a>
								<i class="fa-solid fa-backward-fast"></i>&nbsp;&nbsp;
							</button>
						</c:if>
						<!--  -->
						</div>
						<div class="col-sm-8 text-center">
						<!--  -->
							<c:if test="${currentPage == 1}">
								<button type="button" class="btn btn-info mt-0"
								style="width: 200px;" disabled="disabled">
								<i class="fa-solid fa-backward"></i>&nbsp;Trang trước
							</button>
							</c:if>
							<c:if test="${currentPage > 1}">
								<button type="button" class="btn btn-info mt-0"
								style="width: 200px;"><a href="home?page=${currentPage - 1}">Trang trước</a>
								<i class="fa-solid fa-backward"></i>&nbsp;
							</button>
							</c:if>
							<!--  -->
							&nbsp;&nbsp;
							<!--  -->
							<c:if test="${currentPage == maxPage}">
							<button type="button" class="btn btn-info" style="width: 200px;" disabled="disabled">
								Trang kế &nbsp;<i class="fa-solid fa-forward"></i>
							</button>
							</c:if>
							<c:if test="${currentPage < maxPage}">
							<button type="button" class="btn btn-info" style="width: 200px;" ><a style="text-decoration: none;" href="home?page=${currentPage + 1}">
							Trang kế 
							</a>
								&nbsp;<i class="fa-solid fa-forward"></i>
							</button>
							</c:if>
							<!--  -->
						</div>
						<div class="col-sm-2">
						<!--  -->
						<c:if test="${currentPage == maxPage}">
						<button type="button" class="btn btn-primary"
								style="width: 200px; margin-right: 50px;" disabled="disabled">
								Trang cuối &nbsp;<i class="fa-solid fa-forward-fast"></i>
							</button>
						</c:if>
							<c:if test="${currentPage < maxPage}">
						<button type="button" class="btn btn-primary"
								style="width: 200px; margin-right: 50px;">
								Trang cuối &nbsp;<i class="fa-solid fa-forward-fast"></i>
							</button>
						</c:if>
						<!--  -->
						</div>
					</div>
				</div>
		</div>
		</article>

	</div>

	<%@ include file="/common/footer.jsp"%>

	</div>

	<script src="https://kit.fontawesome.com/f61ca73bc8.js"></script>
</body>
</html>
