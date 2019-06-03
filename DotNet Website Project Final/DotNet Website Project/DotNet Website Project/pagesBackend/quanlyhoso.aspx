<%@ Page Title="" Language="C#" MasterPageFile="~/pagesBackend/BackendLayout.Master" AutoEventWireup="true" CodeBehind="quanlyhoso.aspx.cs" Inherits="DotNet_Website_Project.pagesBackend.quanlyhoso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Quản Lý</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="#">Quản Lý</a></li>
                            <li class="active">Quản lý tài khoản</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong  style="font-size:16pt;"class="card-title">Thông tin hồ sơ của tài khoản  </strong> <font style="color:red;font-size:20pt">admin123</font>
                            </div>
                            <div class="card-body">
                         	<div class="sixteen columns">
		<div class="submit-page">

			<!-- Notice -->
			<div class="notification notice closeable margin-bottom-40">
				<p><span>Lưu ý ?</span> Hãy cập nhập thông tin cẩn thận để tăng độ chính xác .</p>
			</div>
				

			 <div class="form">
				<h5>Ảnh Đại Diện Cũ</h5>
				<img style="" src="/Content/images/Backend/admin.jpg" alt="">
			</div> 
			
			<!-- Logo -->
			<div class="form">
				<h5>Ảnh Đại Diện Mới <span></span></h5>
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




			<div class="divider margin-top-0 padding-reset"></div>
			<a href="#" class="button linkedin-btn big margin-top-5">Cập nhập <i class="fa fa-arrow-circle-right"></i></a>

		</div>
	</div>
                            </div>
                        </div>
                    </div>


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->
	
</asp:Content>
