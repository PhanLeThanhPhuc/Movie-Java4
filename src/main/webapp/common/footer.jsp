<%@ page pageEncoding="UTF-8"%>
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
		<script type="text/javascript">
  	$('#changePassBtn').click(function(){
  		$('#messageChangePass').text('');
  		var currentPass = $('#currentPass').val();
  		var newPass = $('#newPass').val();
  		var formData = {'currentPass': currentPass,'newPass': newPass};
  		$.ajax({
  			url:'changePass',
  			type: 'POST',
  			data: formData
  		}).then(function(data){
  			$('#messageChangePass').text('Change Password success !');
  			
  		}).fail(function(error) {
  			$('#messageChangePass').text('Change Password failed , Try again !');
		});
  	});
  </script>