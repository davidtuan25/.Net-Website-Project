<%@ Page Title="Khôi Phục Mật Khẩu" Language="C#" MasterPageFile="~/pagesFrontend/FrontendLayout.Master" AutoEventWireup="true" CodeBehind="khoiphucmatkhau.aspx.cs" Inherits="DotNet_Website_Project.Frontend.khoiphucmatkhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="clearfix"></div>


<!-- Titlebar
================================================== -->
<div id="titlebar" class="single">
	<div class="container">

		<div class="sixteen columns">
			<h2>Khôi Phục Tài Khoản</h2>
			<nav id="breadcrumbs">
				<ul>
					<li></li>
					<li><a href="#">Home</a></li>
					<li>Khôi phục tài khoản</li>
				</ul>
			</nav>
		</div>

	</div>
</div>
 
    <div class="container">

	<div class="my-account">
	

		<div class="tabs-container">
			<!-- Login -->
			<div class="tab-content" id="tab1" style="display: none;">

				<h3 style="text-align: center;" class="margin-bottom-10 margin-top-10">Tiến hành khôi phục mật khẩu<br>Tài khoản : <font style="color:red"> ABC</font></h3>

				<form method="post" class="login">

			
					<p class="form-row form-row-wide">
						<label for="password">Mật khẩu mới :</label>
						<input class="input-text" type="password" name="password" id="password" />
					</p>
					<p class="form-row form-row-wide">
						<label for="password">Nhập lại mật khẩu mới :</label>
						<input class="input-text" type="password" name="password" id="password" />
					</p>						
					<p style="width: 29%;margin : 0 auto" class="form-row">
						<input type="submit" class="button" name="login" value="Khôi phục" />

						<label for="rememberme" class="rememberme">
					</p>
				
				
					
				</form>
			</div>

				
	
		</div>
	</div>
</div>

</asp:Content>
