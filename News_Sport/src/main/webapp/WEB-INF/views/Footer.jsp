<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer class="footer-section set-bg"
		data-setbg="assets/img/footer-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="fs-logo">
						<div class="logo">
							<a href="./index.html"><img src="assets/img/logo.png" alt=""></a>
						</div>
						<ul>
							<li><i class="fa fa-envelope"></i> Info.colorlib@gmail.com</li>
							<li><i class="fa fa-copy"></i> +(12) 345 6789 10</li>
							<li><i class="fa fa-thumb-tack"></i> 40 Baria Sreet 133/2
								New York City, United State</li>
						</ul>
						<div class="fs-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-tumblr"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 offset-lg-1">
					<div class="fs-widget">
						<h4>Top Club</h4>
						<ul class="fw-links">
							<li><a href="#">Brazil</a></li>
							<li><a href="#">Germany</a></li>
							<li><a href="#">Italy</a></li>
							<li><a href="#">Argentina</a></li>
							<li><a href="#">France</a></li>
						</ul>
						<ul class="fw-links">
							<li><a href="#">England</a></li>
							<li><a href="#">Netherlands</a></li>
							<li><a href="#">Hungary</a></li>
							<li><a href="#">Croatia</a></li>
							<li><a href="#">Poland</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="fs-widget">
						<h4>Recent News</h4>

						<div class="fw-item">
							<h5>
								<a href="#">England win shows they have the spark to go far
									at World Cup</a>
							</h5>
							<ul>
								<li><i class="fa fa-calendar"></i> May 19, 2019</li>
								<li><i class="fa fa-edit"></i> 3 Comment</li>
							</ul>
						</div>
						<div class="fw-item">
							<h5>
								<a href="#">Sri Lanka v Australia: Cricket World Cup 2019 –
									live!</a>
							</h5>
							<ul>
								<li><i class="fa fa-calendar"></i> May 19, 2019</li>
								<li><i class="fa fa-edit"></i> 3 Comment</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="copyright-option">
				<div class="row">
					<div class="col-lg-12">
						<div class="co-text">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
						<div class="co-widget">
							<ul>
								<li><a href="#">Copyright notification</a></li>
								<li><a href="#">Terms of Use</a></li>
								<li><a href="#">Privacy Policy</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	
	<!-- Footer Section End -->

	<!-- Search model Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">
				<i class="fa fa-close"></i>
			</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

	<!-- Js Plugins -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<script src="assets/js/jquery.slicknav.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/main.js"></script>

	<script>
    function loadArticlesByCategory(categoryId) {
        // Gửi yêu cầu AJAX đến server
        $.ajax({
            url: "/News_Sport/category",  // URL đến trang xử lý (hoặc một servlet nếu bạn muốn)
            method: "GET",
            data: { id: categoryId },
            success: function(response) {
                // Cập nhật nội dung bài viết
                $("#articles-container").html(response);
            },
            error: function() {
                alert("Có lỗi xảy ra khi tải dữ liệu.");
            }
        });
    }
</script>
</body>

</html>