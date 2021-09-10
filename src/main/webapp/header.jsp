<!-- ======= Header ======= -->
<header id="header" class="fixed-top ">
	<div class="container d-flex align-items-center">

		<h1 class="logo">
			<a href="<%= request.getContextPath()%>">Leave Portal</a>
		</h1>
		<!-- Uncomment below if you prefer to use an image logo -->
		<!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

		<nav class="nav-menu d-none d-lg-block">

			<ul>
				<li><a href="<%= request.getContextPath()%>">Home</a></li>
				<!--    <li><a href="leave.jsp" class="btn btn-success" style="color:white;">Apply Leave</a></li> -->
				<li><a href="login.jsp" class="btn btn-success"
					style="color: white;">Login</a></li>
				<li><a href="register.jsp" class="btn btn-success"
					style="color: white;">Register</a></li>


			</ul>

		</nav>
		<!-- .nav-menu -->
	</div>
</header>
<!-- End Header -->
