<%@ page pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${video.title}</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%@ include file="/common/head.jsp"%>
<style>
</style>
</head>
<body>
	<%@ include file="/common/header.jsp"%>
	
	<div style="width: 100%;">
		<div class="card "
			style="background-color: #1E293B; opacity: 1; border-radius: 0px">
			<div class="card-body">
				
					<div class="row">
						<div class="col-8">
							<div class="  mb-3 mt-2 " style="margin-left: 10px;">
								<div style="height: 390px; width: 720px;">

									<iframe style="width: 1100px; height: 530px" class="p-2"
										src="https://www.youtube.com/embed/${video.href}"></iframe>
								</div>
							</div>
							<div class=" mb-3 mx-3"
								style="border-color: none; margin-top: 150px">
								<input type="text" class="form-control text-light fw-bold"
									id="videotitle" name="videotitle"
									style="border-radius: none; background-color: #1E293B; opacity: 1; border: none;font-size: 20px"
									value="${video.title}" readonly>
							</div>
							<div class=" mb-3 mt-0 mx-3"
								style="background-color: #1E293B; opacity: 0.5">
								<textarea class="form-control text-dark"  id="description"
									name="description" rows="6">${video.desscription}</textarea>
							</div>
							<div class="bg-muted text-muted"
								style="border-radius: 30px; height: 60px">
								
								<span class="row" style="padding-right: 30px">
								
									<div class="col-6 row" style="margin-left: 5px">

										<!--  -->
										
										<div class="col-4">
										<form >
											<c:if test="${not empty sessionScope.currentUser}">
											
												<button id="likeOrUnlikeBtn" class="col-4 btn fw-bold text-light "
													style="width: 130px; font-size: 15px; background-color: blue; border-radius: 35px">
													<i class="fa-solid fa-thumbs-up" style="font-size: 20px"></i>&nbsp;&nbsp;
													<c:choose>
													<c:when test="${flagLikeBtn == true}">
														UnLike
										 			</c:when>
													<c:otherwise>
													 	Like
													 </c:otherwise>
													</c:choose>
													
												</button>
												
												
											</c:if>
											</form>
										</div>
										
										&nbsp;&nbsp;
										<div class="col-1"></div>
										<div class="col-4">
											<c:if test="${not empty sessionScope.currentUser}">
												<button type="submit"
													class="col-4 btn fw-bold text-light ml-3"
													style="width: 130px; font-size: 15px; background-color: red; border-radius: 35px">
													<i class="fa-solid fa-heart" style="font-size: 20px"></i>&nbsp;&nbsp;Theo
													dỏi
												</button>
											</c:if>
										</div>

									</div>
									<div class="col-4"></div>
									<div class="col-2">
										<c:if test="${not empty sessionScope.currentUser}">
											<button type="submit"
												class="col-4 bg-secondary btn text-dark fw-bold text-secondary float-start"
												style="width: 130px; font-size: 15px; border-radius: 35px">
												<i class=" fa-solid fa-share text-dark"
													style="font-size: 20px;"></i>&nbsp;&nbsp;Share
											</button>&nbsp;
									</c:if>
									
										
									</div> <!--  -->
									
								</span>
							
							</div>

						</div>
						<div class="col-4">
						<c:forEach var="video" items="${vi}">
							<div class="col-lg-4 col-md-4 col-6" style="background-color: white;">
								<div class="card"
								
									style="width: 420px; background-color: #263238">
									<a href="<c:url value='/video?action=watch&id=${video.href}'></c:url>">
									<img src="<c:url value='${video.posster}'></c:url>" class="card-img-top" alt="IMAGE"
										style="padding: 20px"></a>
									
										
									<div class="card-body">

										<h5 class="h5 card-title text-center text-uppercase"
											style="color: #ccff99; white-space: nowrap;overflow: hidden;">${video.title}</h5>
											<h5 class="h6 card-title  text-center" style="color: #00FFFF">View ${video.views}</h5>
										<hr>
										
									</div>
								</div>
							</div>
							</c:forEach>
						</div>

					</div>
		
				
			</div>
			
		</div>
	</div>
	<input id="videoIdHdn" type="hidden" value="${video.href}"/>
	<%@ include file="/common/footer.jsp"%>
	<script>
    $('#likeOrUnlikeBtn').click(function() {
        var videoId = $('#videoIdHdn').val();
        $.ajax({
            url: 'video?action=like&id=' + videoId
        }).then(function(data) {
            var text = $('#likeOrUnlikeBtn').text();
            if (text.indexOf('Like') != -1) {
                $('#likeOrUnlikeBtn').text('UnLike');
            } else {
                $('#likeOrUnlikeBtn').text('Like');
            };
        }).fail(function(error) {
            alert('Oops !! Pls try again');
        });
    });
</script>
</body>
	
</html>