<%@ Page Title="" Language="C#" MasterPageFile="~/pagesBackend/BackendLayout.Master" AutoEventWireup="true" CodeBehind="quanlytaikhoan.aspx.cs" Inherits="DotNet_Website_Project.pagesBackend.quanlytaikhoan" %>
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
                                <strong class="card-title">Danh Sách Tài Khoản</strong>
                            </div>
                            <div class="card-body">
							<div class="row">
							<button class="btn btn-primary">Thêm Tài Khoản</button>
							</div>
							<table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Tên tài khoản</th>
											<th>Họ tên</th>
											<th>Hồ sơ</th>
                                            <th>Mật khẩu</th>
                                            <th>Trạng thái</th>
											<th>Quyền</th>
											<th>Ngày tạo</th>
											<th></th>
															<th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>
                                                    <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>           <tr>
                                            <td>12</td>
                                            <td>admini123</td>
                                            <td>Ngô Khá Bá</td>
                                            <td><a href="">Xem thông tin</a></td>
                                            <td>********</td>
											<td>Đang sử dụng</td>
											<td>Nhà tuyển dụng</td>
                                            <td>15/05/2018</td>
											<td><button class="btn btn-primary">Sửa</button></td>
											<td><button class="btn btn-danger">Xóa</button></td>
                                        </tr>
                                    
                                   
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->
</asp:Content>
