<%@ Page Title="" Language="C#" MasterPageFile="~/pagesFrontend/FrontendLayout.Master" AutoEventWireup="true" CodeBehind="quenmatkhau.aspx.cs" Inherits="DotNet_Website_Project.Frontend.quenmatkhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div class="clearfix"></div>


<!-- Titlebar
================================================== -->
<div id="titlebar" class="single">
	<div class="container">

		<div class="sixteen columns">
			<h2>Quên Mật Khẩu</h2>
			<nav id="breadcrumbs">
				<ul>
					<li></li>
					<li><a href="#">Home</a></li>
					<li>Quên mật khẩu</li>
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

				<h3 style="text-align: center;" class="margin-bottom-10 margin-top-10">Yêu cầu khôi phục mật khẩu</h3>

				<form method="post" class="login">

					
					<p class="form-row form-row-wide">
						<label for="username">Tài khoản :</label>
						<input type="text" class="input-text" name="username" id="username" value="" />
					</p>

					<p class="form-row form-row-wide">
						<label for="password">Email tài khoản :</label>
						<input class="input-text" type="password" name="password" id="password" />
					</p>
					
					
					<p style="width: 29%;margin : 0 auto" class="form-row">
						<input type="submit" class="button" name="login" value="Yêu cầu" />

						<label for="rememberme" class="rememberme">
					</p>
				
				
					
				</form>
			</div>

				
	
		</div>
	</div>
</div>

</asp:Content>
