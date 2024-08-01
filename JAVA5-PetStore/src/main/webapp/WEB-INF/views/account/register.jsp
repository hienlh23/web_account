<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng ký thành viên</title>
    <!-- Custom fonts for this template-->
    <link href="/manager/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="/manager/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body class="bg-gradient-primary">
    <div class="container">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Đăng Ký</h1>
                            </div>
                            <form action="/register" method="POST" class="user">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" name="ten_khachhang" class="form-control form-control-user" id="exampleFirstName" placeholder="Họ tên" required>
                                        <div class="invalid-feedback text-center">Vui lòng nhập họ tên!</div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" name="matkhau_kh" class="form-control form-control-user" id="exampleInputPassword" placeholder="Mật khẩu" required>
                                        <div class="invalid-feedback text-center">Vui lòng nhập mật khẩu!</div>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" name="rePassword" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Xác nhận mật khẩu" required>
                                        <div class="invalid-feedback text-center">Vui lòng xác nhận mật khẩu!</div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" name="sdt_kh" class="form-control form-control-user" id="exampleFirstName" placeholder="Số điện thoại" required>
                                        <div class="invalid-feedback text-center">Vui lòng nhập đúng số điện thoại!</div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group is-invalid mb-3">
                                        <input type="email" name="email_kh" class="form-control form-control-user" placeholder="Nhập địa chỉ email" aria-label="Recipient's username" aria-describedby="button-addon2" required>
                                    </div>
                                    <div class="invalid-feedback text-center">Vui lòng nhập địa chỉ email!</div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" name="diachi_kh" class="form-control form-control-user" id="exampleInputPassword" placeholder="Địa chỉ. VD: số nhà, tên đường, phường..." required>
                                        <div class="invalid-feedback text-center">Vui lòng nhập địa chỉ!</div>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" name="provincial" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Tỉnh" required>
                                        <div class="invalid-feedback text-center">Chọn tỉnh của bạn</div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary btn-user btn-block">Đăng ký</button>
                                <hr>
                            </form>
                        </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    </body></html>
                    