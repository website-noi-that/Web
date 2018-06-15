<%@ page pageEncoding="utf-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
        <div class="row content">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="breadcrumbs">
                    <p>
                        <a href="#">Trang Chủ</a>
                        <i class="icons icon-right-dir"></i> Sản Phẩm
                        <i class="icons icon-right-dir"> </i> Chỉnh Sửa
                    </p>
                </div>
            </div>
            <!-- Main Content -->
            <section class="main-content col-lg-2 col-md-2 col-sm-2"></section>
            <section class="main-content col-lg-8 col-md-8 col-sm-8">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 register-account">
                        <div class="carousel-heading no-margin">
                            <h4>Sửa sản phẩm</h4>
                        </div>

                        <div class="page-content">
                            <div class="row">
                                <p style="color: red; text-align: left; padding-left: 15px; font-size: 18px;">${messager}</p>
                            </div>
                            <form:form action="Ulogin.htm" modelAttribute="login" method="POST" id="formlogin">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-2">
                                        <p>Mã sản phẩm:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-9 col-sm-10">
                                        <input type="text" name="TenDangNhap" id="TenDangNhap" value="${TK}">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Tên sản phẩm:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <input type="text" name="TenDangNhap" id="TenDangNhap" value="${TK}">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Xuất Xứ:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <input type="text" name="TenDangNhap" id="TenDangNhap" value="${TK}">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Số Lượng:</p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                        <input type="text" name="TenDangNhap" id="TenDangNhap" value="${TK}">
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Đơn vị tính:</p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                        <input type="text" name="TenDangNhap" id="TenDangNhap" value="${TK}">
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Giá nhập:</p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                        <input type="text" name="TenDangNhap" id="TenDangNhap" value="${TK}">
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Giá bán:</p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                        <input type="text" name="TenDangNhap" id="TenDangNhap" value="${TK}">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Tình trạng:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <input type="text" name="TenDangNhap" id="TenDangNhap" value="${TK}">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Hình:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <input type="text" name="TenDangNhap" id="TenDangNhap" value="${TK}">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Tiêu đề:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <input type="text" name="TenDangNhap" id="TenDangNhap" value="${TK}">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Chi tiết:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <input type="text" name="TenDangNhap" id="TenDangNhap" value="${TK}">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Loại sản phẩm:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <input type="text" name="TenDangNhap" id="TenDangNhap" value="${TK}">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Ghi chú:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <input type="text" name="TenDangNhap" id="TenDangNhap" value="${TK}">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <input class="big" type="submit" value="Đăng Nhập">
                                        <input class="big" type="reset" value="Cancel">
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </section>
            <section class="main-content col-lg-2 col-md-2 col-sm-2"></section>
        </div>