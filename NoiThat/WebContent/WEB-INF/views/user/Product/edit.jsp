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
                            <form:form action="edit-product.htm?id=${editproduct.maSP}&anh=${anh}" modelAttribute="editproduct" method="POST" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-2">
                                        <p>Mã sản phẩm:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-9 col-sm-10">
                                        <form:input type="text" path="MaSP" />
                                        <form:errors path="MaSP" style="color:red"></form:errors>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Tên sản phẩm:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <form:input type="text" path="TenSP" />
                                        <form:errors path="TenSP" style="color:red"></form:errors>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Xuất Xứ:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <form:input type="text" path="XuatXu" />
                                        <form:errors path="XuatXu" style="color:red"></form:errors>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Số Lượng:</p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                        <form:input type="number" path="Soluong" />
                                        <form:errors path="Soluong" style="color:red"></form:errors>
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Đơn vị tính:</p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                        <form:input type="text" path="DonViTinh" />
                                        <form:errors path="DonViTinh" style="color:red"></form:errors>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Giá nhập:</p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                        <form:input type="number" path="GiaNhap" />
                                        <form:errors path="GiaNhap" style="color:red"></form:errors>
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Giá bán:</p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                        <form:input type="number" path="GiaBan" />
                                        <form:errors path="GiaBan" style="color:red"></form:errors>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Tình trạng:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <form:select path="TinhTrang">
                                            <form:option value="Còn Hàng">Còn Hàng</form:option>
                                            <form:option value="Hàng Mới">Hàng Mới</form:option>
                                            <form:option value="Hết Hàng">Hết Hàng</form:option>
                                        </form:select>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Hình:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <input type="file" name="photo" value="${anh}"/>
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <img src="img/product/${editproduct.hinh}" style="width: auto; height: 300px; padding: 20px;">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Tiêu đề:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <form:input type="text" path="TieuDe" />
                                        <form:errors path="TieuDe" style="color:red"></form:errors>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Chi tiết:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <form:input type="text" path="ChiTiet" />
                                        <form:errors path="ChiTiet" style="color:red"></form:errors>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Loại sản phẩm:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <form:select path="LoaiSP">
                                            <form:option value="bàn">Bàn</form:option>
                                            <form:option value="ghế">Ghế</form:option>
                                            <form:option value="tủ">Tủ</form:option>
                                        </form:select>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2">
                                        <p>Ghi chú:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10">
                                        <form:input type="text" path="GhiChu" />
                                        <form:errors path="GhiChu" style="color:red"></form:errors>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <input class="big" type="submit" value="Cập Nhập">
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