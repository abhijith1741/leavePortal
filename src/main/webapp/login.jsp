<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Sailor Bootstrap Template - Index</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
<link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Sailor - v2.3.1
  * Template URL: https://bootstrapmade.com/sailor-free-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<%@ include file="header.jsp"%>

	<main id="main" style="margin-top: 35px;">
		<section id="about" class="about">
			<div class="container">
				<div class="row content">
					<div class="col-lg-12 mt-5 mt-lg-0">
						<div>
							<h1>Enter your details</h1>
						</div>

						<section class="vh-100">
							<div class="container-fluid h-custom">
								<div
									class="row d-flex justify-content-center align-items-center h-100">
									<div class="col-md-9 col-lg-6 col-xl-5">
										<img
											src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-login-form/draw2.png"
											class="img-fluid" alt="Sample image">
									</div>
									<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
										<form action="<%=request.getContextPath()%>/loginServlet"
											method="post">

											<!-- Email input -->
											<div class="form-outline mb-4">
												<input type="text" class="form-control form-control-lg"
													placeholder="Enter Username" required="required"
													/ name="name"> <label class="form-label">
													Username</label>
											</div>
											<!-- Password input -->
											<div class="form-outline mb-3">
												<input type="password" class="form-control form-control-lg"
													placeholder="Enter password" name="password" /> <label
													class="form-label">Password</label>
											</div>

											<div class="text-center text-lg-start mt-4 pt-2">
												<button type="submit" class="btn btn-primary btn-lg"
													style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
											</div>

										</form>
									</div>
								</div>
							</div>
							<div
								class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
								<!-- Copyright -->
								<div class="text-white mb-3 mb-md-0">Copyright © 2020. All
									rights reserved.</div>
								<!-- Copyright -->

								<!-- Right -->
								<div>
									<a href="#!" class="text-white me-4"> <i
										class="fab fa-facebook-f"></i>
									</a> <a href="#!" class="text-white me-4"> <i
										class="fab fa-twitter"></i>
									</a> <a href="#!" class="text-white me-4"> <i
										class="fab fa-google"></i>
									</a> <a href="#!" class="text-white"> <i
										class="fab fa-linkedin-in"></i>
									</a>
								</div>
								<!-- Right -->
							</div>
						</section>

					</div>
				</div>
			</div>
		</section>
	</main>


	<%@ include file="footer.jsp"%>

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/venobox/venobox.min.js"></script>
	<script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
	<script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

</html>