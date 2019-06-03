<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job-page-alt.aspx.cs" Inherits="frontend.Views.job_page_alt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
<meta charset="utf-8" />
<title>Danh sách công việc</title>

<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

<!-- CSS
================================================== -->
<link rel="stylesheet" href="../Content/frontendCSS/style.css" />
<link rel="stylesheet" href="../Content/frontendCSS/colors/green.css" id="colors" />


	

</head>

<body>
<div id="wrapper">


<!-- Header
================================================== -->
<header>
<div class="container">
	<div class="sixteen columns">

		<!-- Logo -->
		<div id="logo">
			<h1><a href="index.html"><img src="../Content/images/Frontend/logo.png" alt="Work Scout" /></a></h1>
		</div>

		<!-- Menu -->
		<nav id="navigation" class="menu">
			<ul id="responsive">

				<li><a href="index.html">Trang chủ</a>
					<ul>
						<li><a href="index.html">Home #1</a></li>
						<li><a href="index-2.html">Home #2</a></li>
						<li><a href="index-3.html">Home #3</a></li>
						<li><a href="index-4.html">Home #4</a></li>
					</ul>
				</li>

				<li><a href="#" id="current">Pages</a>
					<ul>
						<li><a href="job-page.html">Job Page</a></li>
						<li><a href="job-page-alt.html">Job Page Alternative</a></li>
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

<!-- Titlebar
================================================== -->
<div id="titlebar" class="photo-bg" style="background: url(../Content/images/Frontend/job-page-photo.jpg)">
	<div class="container">
		<div class="ten columns">
			<span><a href="browse-jobs.aspx">Quán cafe</a></span>
			<h2>Quán cafe startup cần tuyển nhân viên làm part-time <span class="part-time">Part-Time</span></h2>
		</div>

		<div class="six columns">
			<a href="#" class="button white"><i class="fa fa-star"></i>Ghé thăm cửa hàng</a>
		</div>

	</div>
</div>


<!-- Content
================================================== -->
<div class="container">
	
	<!-- Recent Jobs -->
	<div class="eleven columns">
	<div class="padding-right">
		
		<!-- Company Info -->
		<div class="company-info">
			<img src="../Content/images/Frontend/start-up.jpg" alt="" />
			<div class="content">
				<h4>Start up coffee</h4>
				<span><a href="#"><i class="fa fa-link"></i> Website</a></span>
				<span><a href="#"><i class="fa fa-twitter"></i> @kingrestaurants</a></span>
			</div>
		</div>
		<br />
		<h1>Cần tuyển 5 nhân viên pha chế và bán cafe :</h1>
		<p>Thời gian :</p>

		<ul class="list-1">
			<li>Ca 1 : 7h - 12h</li>
			<li>Ca 2 : 12h30 - 5h30</li>
			<li>Lương 15.000 đ / giờ. Thưởng khi nếu làm tốt.</li>
		</ul>
		<br/>
		<h4 class="margin-bottom-10">Yêu cầu công việc</h4>
		<ul class="list-1">
			<li>Chịu học hỏi, nhanh nhẹn, hoạt bát.</li>
			<li>Trung thực.</li>
			<li>Có xe máy là 1 lợi thế.</li>
		</ul>

	</div>
	</div>


	<!-- Widgets -->
	<div class="five columns">

		<!-- Sort by -->
		<div class="widget">
			<h4>Ứng tuyển công việc</h4>

			<div class="job-overview">
				
				<ul>
					<li>
						<i class="fa fa-map-marker"></i>
						<div>
							<strong>Địa điểm:</strong>
							<span>Trước cây xăng Petrolimet, đường Trần Nào, Phường An Phú, Q2, TPHCM</span>
						</div>
					</li>
					<li>
						<i class="fa fa-user"></i>
						<div>
							<strong>Title:</strong>
							<span>Tuyển nhân viên bán cafe</span>
						</div>
					</li>
				</ul>


				<a href="#small-dialog" class="popup-with-zoom-anim button">Ứng tuyển</a>

				<div id="small-dialog" class="zoom-anim-dialog mfp-hide apply-popup">
					<div class="small-dialog-headline">
						<h2>Ứng tuyển ...(title)</h2>
					</div>

					<div class="small-dialog-content">
						<form action="#" method="get" runat="server">
                            <asp:TextBox ID="fullname" placeholder="Họ và tên" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requireName" ControlToValidate="fullname" ErrorMessage="Name is required" CssClass="error" runat="server"></asp:RequiredFieldValidator>
                            
                            <asp:TextBox ID="txtemail" placeholder="Email " runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredEmail" ControlToValidate="txtemail" ErrorMessage="Email is required" CssClass="error" runat="server"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="remail" runat="server" CssClass="error" 
                                   ControlToValidate="txtemail" ErrorMessage="Email isn't valid" 
                                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                </asp:RegularExpressionValidator>

							<textarea placeholder="Ghi chú :"></textarea>

							<!-- Upload CV -->
							<div class="upload-info"><strong>Tải lên hình ảnh của bạn</strong></div>
							<div class="clearfix"></div>

							<label class="upload-btn">
							    <input type="file" />
							    <i class="fa fa-upload"></i> Chọn hình
							</label>
							<span class="fake-input">No file selected</span>

							<div class="divider" style="text-align:center">

                            <asp:Button ID="sendApply" BackColor="Blue"  Text="Gởi" runat="server"/>
                            </div>
                                                      
						</form>
					</div>
					
				</div>

			</div>

		</div>

	</div>
	<!-- Widgets / End -->


</div>


<!-- Footer
================================================== -->
<div class="margin-top-50"></div>

<div id="footer">
	<!-- Bottom -->
	<div class="container">
		<div class="footer-bottom">
			<div class="sixteen columns">
				<h4>Follow Us</h4>
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
<style type="text/css">
    .error {
        color: red;
    }
    .btnSend{
        background-color:blue;
    }
</style>

<!-- Scripts
================================================== -->
    <script src="../Scripts/JQuery/jquery-2.1.3.min.js"></script>
<script src="../Scripts/Frontend/custom.js"></script>
<script src="../Scripts/JQuery/jquery.superfish.js"></script>
<script src="../Scripts/JQuery/jquery.themepunch.tools.min.js"></script>
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
