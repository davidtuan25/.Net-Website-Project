<%@ Page Title="" Language="C#" MasterPageFile="~/pagesFrontend/FrontendLayout.Master" AutoEventWireup="true" CodeBehind="thongtincanhan.aspx.cs" Inherits="DotNet_Website_Project.Frontend.thongtincanhan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div id="titlebar" class="resume">
	<div class="container">
		<div class="ten columns">
			<div class="resume-titlebar">
				<img style="margin-top: 10%;" src="images/resumes-list-avatar-01.png" alt="">
				<div class="resumes-list-content">
					<h4>Nhà Tuyển Dụng <span>Phạm Quang Tuấn</span></h4>
			<span class="icons"><a href="#"><i class="fa fa-child"></i>Nam</a></span>
					<span class="icons"><a href="#"><i class=" 	fa fa-calendar"></i> Ngày sinh : 22/02/1990</a></span>
					<!--<span class="icons"><a href="mailto:john.doe@example.com"><i class="fa fa-envelope"></i>Email : john.doe@gmail.com .</a></span>!-->
				<span class="icons"><i class="fa fa-map-marker"></i> 1000 Quốc Lộ 1A, THPCM .	</span>
								<span class="icons"><i class="fa fa-money"></i> Tổng thu nhập làm việc : 100$ .</span>

					<div class="skills">
					<p>Các loại thẻ thanh toán đang dùng : </p>
						<span>Paypal</span>
						<span>Credit Card</span>
						<span>Master Card</span>
					</div>
					<div class="clearfix"></div>

				</div>
			</div>
		</div>

		<div class="six columns">
			<div class="two-buttons">

<a href="#small-dialog" class="popup-with-zoom-anim button"><i class="fa fa-envelope"></i>Sửa Thông Tin</a>

				<div id="small-dialog" class="zoom-anim-dialog mfp-hide apply-popup">
					<div class="small-dialog-headline">
						<h2>Gửi Email đến bạn ấy </h2>
					</div>

					<div class="small-dialog-content">
						<form action="#" method="get" >
							<input type="text" placeholder="Tên của bạn" value=""/>
							<input type="text" placeholder="Email của bạn" value=""/>
							<textarea placeholder="Nội dung"></textarea>

							<button class="send">Gửi tin nhắn</button>
						</form>
					</div>
					
				</div>
				


			</div>
		</div>

	</div>
</div>

    <div class="container">
	<!-- Recent Jobs -->
	<div class="eight columns">
	<div class="padding-right">

		<h3 class="margin-bottom-15">Thông tin nghề nghiệp</h3>

		<p class="margin-reset">
			Mình chuyên thiết kế tất cả ấn phẩm quảng cáo: logo, brochure, catalogue, poster, banner, lịch, nhãn giấy, bao bì, layout web, logo banner ứng dụng điện thoại... Ngoài ra mình cũng có khả năng dàn trang cho tạp chí, báo...

Mình có thể làm việc dưới áp lực cao, hoàn thành đúng deadline, tìm hiểu các xu hướng thiết kế mới cũng như tương tác cùng khách hàng.

Mình thành thạo các phần mềm thiết kế Adobe, ngoài ra mình cũng rất thích vẽ tay...

Rất vui được làm việc với các bạn để cùng tạo ra các sản phẩm sáng tạo. 		</p>

		<br>

		<ul class="list-1">
	<div class="six columns">
	

				<button  style ="font-weight: 700" class="fa fa-star">&nbsp Xem đánh giá làm việc </button>
					</div>
		</ul>

	</div>
	</div>


	<!-- Widgets -->
	<div class="eight columns">

		<h3 class="margin-bottom-20">5 Việc làm gần nhất </h3>

		<!-- Resume Table -->
		<dl class="resume-table">
			<dt>
				<small class="date">2006 - 2007</small>
				<strong>Lập trình Game</strong>
			</dt>
				<dt>
				<small class="date">2009 - 2010</small>
				<strong>Nhân viên SEO</strong>
			</dt>
						<dt>
				<small class="date">2012 - 2015</small>
				<strong>Hỗ trợ nhân viên IT</strong>
			</dt>
						<dt>
				<small class="date">2015 - 2016</small>
				<strong>Lập trình C# thuê</strong>
			</dt>
						<dt>
				<small class="date">2017 - 2018</small>
				<strong>Lập trình Game</strong>
			</dt>
	
			
		</dl>

	</div>

</div>

</asp:Content>
