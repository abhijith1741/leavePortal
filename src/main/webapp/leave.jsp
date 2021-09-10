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
							<h1>Hello Customer</h1>
						</div>
						<%
							String status = (String) request.getAttribute("status");
							if(status !=null && "success".equals(status)){
						%>

						<div class="alert alert-success" role="alert">Leave Applied</div>

						<%
							}
						%>

						<form action="<%=request.getContextPath()%>/applyServlet"
							method="post" role="form" class="">
							<div class="form-row">
								<div class="col-md-6 form-group">
									<input type="text" name="name" class="form-control"
										placeholder="Name" required="" />
								</div>
								<div class="col-md-6 form-group">
									<input type="email" class="form-control" name="email"
										placeholder="enter your email Id" required="" />
								</div>
							</div>
							<div class="form-row">
								<div class="col-md-6 form-group">
									<textarea class="" rows="6" cols="65" name="reason"
										placeholder="Specify Reason"></textarea>
								</div>
							</div>
							<div class="text-center">
								<button class="btn btn-success" type="submit">Submit</button>
							</div>
						</form>

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