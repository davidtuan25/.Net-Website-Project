<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="frontend.Views.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8" />
<title>Trang chủ | Việc làm cho người muốn kiếm thêm thu nhập</title>

<!-- CSS
================================================== -->
<link rel="stylesheet" href="../Content/frontendCSS/style.css" />
<link rel="stylesheet" href="../Content/frontendCSS/colors/green.css" id="colors" />

<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

</head>

<body>
<div id="wrapper">


<!-- Header
================================================== -->
<header runat="server">
<div class="container">
	<div class="sixteen columns">
	
		<!-- Logo -->
		<div id="logo">
			<h1><a href="index.html"><img src="../Content/images/Frontend/logo.png" alt="Work Scout" /></a></h1>
		</div>

		<!-- Menu -->
		<nav id="navigation" class="menu">
			<ul id="responsive">

				<li><a href="Views/index.aspx" id="current">Trang chủ</a></li>
				<li><a href="#">Công việc</a>
					<ul>
						<li><a href="job-page.html">Việc làm part-time</a></li>
						<li><a href="job-page-alt.html">Việc làm thời vụ</a></li>
						<li><a href="resume-page.html">Resume Page</a></li>
						<li><a href="shortcodes.html">Shortcodes</a></li>
						<li><a href="pricing-tables.html">Pricing Tables</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</li>

				<li><a href="#">For Candidates</a>
					<ul>
						<li><a href="browse-jobs.html">Browse Jobs</a></li>
						<li><a href="browse-categories.html">Browse Categories</a></li>
						<li><a href="add-resume.html">Add Resume</a></li>
						<li><a href="manage-resumes.html">Manage Resumes</a></li>
						<li><a href="job-alerts.html">Job Alerts</a></li>
					</ul>
				</li>

				<li><a href="#">For Employers</a>
					<ul>
						<li><a href="add-job.html">Add Job</a></li>
						<li><a href="manage-jobs.html">Manage Jobs</a></li>
						<li><a href="manage-applications.html">Manage Applications</a></li>
						<li><a href="browse-resumes.html">Browse Resumes</a></li>
					</ul>
				</li>

				<li><a href="blog.html">Blog</a></li>
			</ul>


			<ul class="responsive float-right">
				<li><a href="my-account.html#tab2"><i class="fa fa-user"></i> Sign Up</a></li>
				<li><a href="my-account.html"><i class="fa fa-lock"></i> Log In</a></li>
			</ul>

		</nav>

		<!-- Navigation -->
		<div id="mobile-navigation">
			<a href="#menu" class="menu-trigger"><i class="fa fa-reorder"></i> Menu</a>
		</div>

	</div>
</div>
</header>
<div class="clearfix"></div>



<!-- Banner
================================================== -->
<div id="banner" style="background: url(../Content/images/Frontend/job-banner.png)">
	<div class="container">
		<div class="sixteen columns">
			
			<div class="search-container">

				<!-- Form -->
				<h2>Tìm công việc theo :</h2>
                <form id="formSearch" runat="server">
                <asp:TextBox ID="text1" class="ico-01" placeholder="Tên công việc, tiêu đề bài tin, công ty ..." runat="server"></asp:TextBox>
                <asp:TextBox ID="text2" class="ico-02" placeholder="tỉnh, thành phố, vùng miền, ..." runat="server"></asp:TextBox>
                <button id="btnSearch" ><i class="fa fa-search"></i></button>
				</form>
				<!-- Announce -->
				<div class="announce">
					Chúng tôi có <strong>15 000</strong> công việc cho bạn!
				</div>

			</div>

		</div>
	</div>
</div>



<!-- Content
================================================== -->
<div id="categories">
	<!-- Categories Group -->
	<div class="categories-group">
		<div class="container">
			<div class="four columns"><h4>Việc làm part-time</h4></div>
			<div class="four columns">
				<ul>
					<li><a href="#">Quán Cafe</a></li>
					<li><a href="#">Nhà hàng</a></li>
					<li><a href="#">Quán ăn</a></li>
					<li><a href="#">Tiệm trà sữa</a></li>
				</ul>
			</div>
			<div class="four columns">
				<ul>
					<li><a href="#">Việc làm văn phòng</a></li>
					<li><a href="#">Xưởng cơ khí</a></li>
					<li><a href="#">Việc làm online</a></li>
				</ul>
			</div>
			<div class="four columns">
				<ul>
					<li><a href="#">CSS</a></li>
					<li><a href="#">HTML5</a></li>
					<li><a href="#">Web Development</a></li>
					<li><a href="#">Web Design</a></li>
					<li><a href="#">eCommerce</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Categories Group -->
	<div class="categories-group">
		<div class="container">
			<div class="four columns"><h4>Việc làm thời vụ</h4></div>
			<div class="four columns">
				<ul>
					<li><a href="#">Nhà hàng</a></li>
					<li><a href="#">Việc làm trong công ty</a></li>
					<li><a href="#">Việc làm tại nhà</a></li>
					<li><a href="#">Việc làm cuối tuần</a></li>
				</ul>
			</div>
			<div class="four columns">
				<ul>
					<li><a href="#">Art</a></li>
					<li><a href="#">3D</a></li>
					<li><a href="#">Adobe Illustrator</a></li>
					<li><a href="#">Drawing</a></li>
					<li><a href="#">Web Design</a></li>
					<li><a href="#">Cartoon</a></li>
					<li><a href="#">Graphics</a></li>
				</ul>
			</div>
			<div class="four columns">
				<ul>
					<li><a href="#">Fashion Design</a></li>
					<li><a href="#">WordPress</a></li>
					<li><a href="#">Editing</a></li>
					<li><a href="#">Writing</a></li>
					<li><a href="#">T-Shirt Design</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Categories Group -->
	<!--
	<div class="categories-group">
		<div class="container">
			<div class="four columns"><h4>Sales & Marketing</h4></div>
			<div class="four columns">
				<ul>
					<li><a href="#">Display Advertising</a></li>
					<li><a href="#">Email Marketing</a></li>
					<li><a href="#">Lead Generation</a></li>
					<li><a href="#">Market & Customer Research</a></li>
				</ul>
			</div>
			<div class="four columns">
				<ul>
					<li><a href="#">Marketing Strategy</a></li>
					<li><a href="#">Public Relations</a></li>
					<li><a href="#">Telemarketing & Telesales</a></li>
					<li><a href="#">Other - Sales & Marketing</a></li>
				</ul>
			</div>
			<div class="four columns">
				<ul>
					<li><a href="#">SEM - Search Engine Marketing</a></li>
					<li><a href="#">SEO - Search Engine Optimization</a></li>
					<li><a href="#">SMM - Social Media Marketing</a></li>
				</ul>
			</div>
		</div>
	</div>
	-->
</div>

<div class="divider-line"></div>
<div class="margin-top-50"></div>


<!-- Recent Works -->
<div class="container">
	
	<!-- Recent Jobs -->
	<div class="eleven columns">
	<div class="padding-right">
		<h3 class="margin-bottom-25">Công việc gần đây</h3>
		<ul class="job-list">

			<li class="highlighted"><a href="job-page-alt.aspx">
				<img src="../Content/images/Frontend/coffee1.jpg" alt="" />
				<div class="job-list-content">
					<h4>Tuyển nhân viên bán cafe abc <span class="part-time">Part-Time</span></h4>
					<div class="job-icons">
						<span><i class="fa fa-briefcase"></i> Quán cafe Startup</span>
						<span><i class="fa fa-map-marker"></i> Q2, TPHCM</span>
						<span><i class="fa fa-money"></i> 15.000đ / giờ</span>
					</div>
				</div>
				</a>
				<div class="clearfix"></div>
			</li>

			<li><a href="job-page.html">
				<img src="images/job-list-logo-02.png" alt="">
				<div class="job-list-content">
					<h4>Core PHP Developer for Site Maintenance <span class="part-time">Part-Time</span></h4>
					<div class="job-icons">
						<span><i class="fa fa-briefcase"></i> Cubico</span>
						<span><i class="fa fa-map-marker"></i> London</span>
						<span><i class="fa fa-money"></i> $50 / hour</span>
					</div>
				</div>
				</a>
				<div class="clearfix"></div>
			</li>

			<li><a href="job-page.html">
				<img src="images/job-list-logo-03.png" alt="" />
				<div class="job-list-content">
					<h4>Restaurant Team Member - Crew <span class="full-time">Full-Time</span></h4>
					<div class="job-icons">
						<span><i class="fa fa-briefcase"></i> King</span>
						<span><i class="fa fa-map-marker"></i> Sydney</span>
						<span><i class="fa fa-money"></i> $15 / hour</span>
					</div>
				</div>
				</a>
				<div class="clearfix"></div>
			</li>

			<li><a href="job-page.html">
				<img src="images/job-list-logo-04.png" alt="">
				<div class="job-list-content">
					<h4>Power Systems User Experience Designer  <span class="internship">Internship</span></h4>
					<div class="job-icons">
						<span><i class="fa fa-briefcase"></i> Hexagon</span>
						<span><i class="fa fa-map-marker"></i> London</span>
						<span><i class="fa fa-money"></i> $75 / hour</span>
					</div>
				</div>
				</a>
				<div class="clearfix"></div>
			</li>

			<li><a href="job-page.html">
				<img src="images/job-list-logo-05.png" alt="">
				<div class="job-list-content">
					<h4>iPhone / Android Music App Development <span class="temporary">Temporary</span></h4>
					<div class="job-icons">
						<span><i class="fa fa-briefcase"></i> Mates</span>
						<span><i class="fa fa-map-marker"></i> New York</span>
						<span><i class="fa fa-money"></i> $115 / hour</span>
					</div>
				</div>
				</a>
				<div class="clearfix"></div>
			</li>
		</ul>

		<a href="browse-jobs.html" class="button centered"><i class="fa fa-plus-circle"></i> Xem thêm</a>
		<div class="margin-bottom-55"></div>
	</div>
	</div>
</div>


<!-- Infobox -->
<div class="infobox margin-reset">
	<div class="container">
		<div class="sixteen columns">Làm giàu từ những công việc nhỏ<a href="my-account.html">Get Started</a></div>
	</div>
</div>


<!-- Footer
================================================== -->
<div class="margin-top-0"></div>

<div id="footer">
	<!-- Bottom -->
	<div class="container">
		<div class="footer-bottom">
			<div class="sixteen columns">
				<h4>Liên hệ với chúng tôi</h4>
				<ul class="social-icons">
					<li><a class="facebook" href="#"><i class="icon-facebook"></i></a></li>
					<li><a class="twitter" href="#"><i class="icon-twitter"></i></a></li>
					<li><a class="gplus" href="#"><i class="icon-gplus"></i></a></li>
					<li><a class="linkedin" href="#"><i class="icon-linkedin"></i></a></li>
				</ul>
				<div class="copyrights">©  Copyright 2015 by <a href="#">Work Scout</a>. All Rights Reserved.</div>
			</div>
		</div>
	</div>

</div>

<!-- Back To Top Button -->
<div id="backtotop"><a href="#"></a></div>

</div>
<!-- Wrapper / End -->


<!-- Scripts
================================================== -->
<script src="../Scripts/JQuery/jquery-2.1.3.min.js"></script>
<script src="../Scripts/Frontend/custom.js"></script>
<script src="../Scripts/JQuery/jquery.superfish.js"></script>
<script src="../ScriptsJQuery//jquery.themepunch.tools.min.js"></script>
<script src="../Scripts/JQuery/jquery.themepunch.revolution.min.js"></script>
<script src="../Scripts/JQuery/jquery.themepunch.showbizpro.min.js"></script>
<script src="../Scripts/JQuery/jquery.flexslider-min.js"></script>
<script src="../Scripts/Frontend/chosen.jquery.min.js"></script>
<script src="../Scripts/JQuery/jquery.magnific-popup.min.js"></script>
<script src="../Scripts/Frontend/waypoints.min.js"></script>
<script src="../Scripts/JQuery/jquery.counterup.min.js"></script>
<script src="../Scripts/JQuery/jquery.jpanelmenu.js"></script>
<script src="../Scripts/Frontend/stacktable.js"></script>


</body>
</html>
