<%@ Page Title="Sửa Thông Tin" Language="C#" MasterPageFile="~/pagesFrontend/FrontendLayout.Master" AutoEventWireup="true" CodeBehind="suathongtincanhan.aspx.cs" Inherits="DotNet_Website_Project.Frontend.suathongtincanhan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="clearfix"></div>


<!-- Titlebar
================================================== -->
<div id="titlebar" class="single submit-page">
	<div class="container">

		<div class="sixteen columns">
			<h2><i class="fa fa-edit"></i> Cập nhập thông tin tài khoản <font style="color:red">administrator</font></h2>
		</div>

	</div>
</div>

<div class="container">
	<!-- Submit Page -->
	<div class="sixteen columns">
		<div class="submit-page">

			<!-- Notice -->
			<div class="notification notice closeable margin-bottom-40">
				<p><span>Lưu ý ?</span> Hãy cập nhập thông tin cẩn thận để tăng độ chính xác .</p>
			</div>


			<!-- <div class="form">
				<h5>Ảnh đại diện</h5>
				<a href="#" class="button linkedin-btn">Cập nhập</a>
			</div> In -->
			
			<!-- Logo -->
			<div class="form">
				<h5>Ảnh Đại Diện <span></span></h5>
				<label class="upload-btn">
				    <input type="file" multiple />
				    <i class="fa fa-upload"></i> Chọn ảnh 
				</label>
				<span class="fake-input">Chưa có ảnh nào được chọn</span>
			</div>
			<!-- Email -->
			<div class="form">
				<h5>Họ</h5>
				<input class="search-field" type="text" placeholder="Nhập vào họ" value=""/>
			</div>
		<div class="form">
				<h5>Tên</h5>
				<input class="search-field" type="text" placeholder="Nhập vào tên đệm và tên" value=""/>
			</div>
			<div class="form">
				<h5>Giới tính</h5>
						<select class="search-field" style="height:50px;" name="chucvu">
						<option value"1">Nam</option>
						<option value"2">Nữ</option>
						</select>
			</div>
			<!-- Email -->
			<div class="form">
				<h5>Email</h5>
				<input class="search-field" type="text" placeholder="Nhập vào Email" value=""/>
			</div>
		<div class="form">
				<h5>Phone</h5>
				<input class="search-field" type="text" placeholder="Nhập vào số điện thoại" value=""/>
			</div>
			<!-- Title -->
			<div class="form">
				<h5>Số Chứng Minh Thư</h5>
				<input class="search-field" type="text" placeholder="Nhập vào 12 số CMND" value=""/>
			</div>

			<!-- Location -->
			<div class="form">
				<h5>Tỉnh Thành Nơi Sinh Sống</h5>
				<input class="search-field" type="text" placeholder="Nhập vào tỉnh thành nơi sống" value=""/>
			</div>
		<div class="form">
				<h5>Quận - Xã - Huyện Nơi Sinh Sống</h5>
				<input class="search-field" type="text" placeholder="Nhập vào quận, xã, huyện nơi sống" value=""/>
			</div>
		<div class="form">
				<h5>Địa Chỉ Nơi Sinh Sống</h5>
				<input class="search-field" type="text" placeholder="Nhập vào địa chỉ nơi sống" value=""/>
			</div>
		
			<!-- Description -->
			<div class="form">
				<h5>Thông Tin Chi Tiết Nghề Nghiệp</h5>
				<textarea class="WYSIWYG" name="summary" cols="40" rows="3" id="summary" spellcheck="true"></textarea>
			</div>


			<!-- Add cap so cong 
			<div class="form with-line">
				<h5>URL(s) <span>(optional)</span></h5>
				<div class="form-inside">
					<div class="form boxed box-to-clone url-box">
						<a href="#" class="close-form remove-box button"><i class="fa fa-close"></i></a>
						<input class="search-field" type="text" placeholder="Name" value=""/>
						<input class="search-field" type="text" placeholder="http://" value=""/>
					</div>

					<a href="#" class="button gray add-url add-box"><i class="fa fa-plus-circle"></i> Add URL</a>
					<p class="note">Optionally provide links to any of your websites or social network profiles.</p>
				</div>
			</div>
			!-->


			<!--
			<div class="form with-line">
				<h5>Education <span>(optional)</span></h5>
				<div class="form-inside">

					<div class="form boxed box-to-clone education-box">
						<a href="#" class="close-form remove-box button"><i class="fa fa-close"></i></a>
						<input class="search-field" type="text" placeholder="School Name" value=""/>
						<input class="search-field" type="text" placeholder="Qualification(s)" value=""/>
						<input class="search-field" type="text" placeholder="Start / end date" value=""/>
						<textarea name="desc" id="desc" cols="30" rows="10" placeholder="Notes (optional)"></textarea>
					</div>

					<a href="#" class="button gray add-education add-box"><i class="fa fa-plus-circle"></i> Add Education</a>
				</div>
			</div>
Education -->



			<div class="divider margin-top-0 padding-reset"></div>
			<a href="#" class="button linkedin-btn big margin-top-5">Cập nhập <i class="fa fa-arrow-circle-right"></i></a>

		</div>
	</div>

</div>
</asp:Content>
