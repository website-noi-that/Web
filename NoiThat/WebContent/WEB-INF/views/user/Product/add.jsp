<%@ page pageEncoding="utf-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
		<div class="row content">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="breadcrumbs">
					<p>
						<a href="index.htm">Trang Chủ</a>
						<i class="icons icon-right-dir"></i>
						<a href="list-product.htm">Sản phẩm</a>
						<i class="icons icon-right-dir"> </i>
						<a href="add-product.htm">Thêm sản phẩm</a>
					</p>
				</div>
			</div>
			<!-- Main Content -->
			<section class="main-content col-lg-2 col-md-2 col-sm-2"></section>
			<section class="main-content col-lg-8 col-md-8 col-sm-8">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 register-account">
						<div class="carousel-heading no-margin">
							<h4>Thêm sản phẩm</h4>
						</div>

						<div class="page-content">
							<div class="row">
								<p style="color: red; text-align: left; padding-left: 15px; font-size: 18px;">${message}</p>
							</div>

							<form:form action="add-product.htm" modelAttribute="sanpham" enctype="multipart/form-data">

								<div class="row">
									<div class="col-lg-2 col-md-2 col-sm-2">
										<label>Tên sản phẩm</label>
									</div>
									<div class="col-lg-10 col-md-10 col-sm-10">
										<form:input path="TenSP" placeholder="Nhập tên sản phẩm" />
										<form:errors path="TenSP" style="color:red"></form:errors>
									</div>

								</div>
								<br>

								<div class="row">
									<div class="col-lg-2 col-md-2 col-sm-2">
										<label>Xuất xứ</label>
									</div>
									<div class="col-lg-10 col-md-10 col-sm-10">
										<form:input path="XuatXu" placeholder="Nhập xuất xứ sản phẩm" />
										<form:errors path="XuatXu" style="color:red"></form:errors>
									</div>

								</div>
								<br>

								<div class="row">
									<div class="col-lg-2 col-md-2 col-sm-2">
										<label>Số lượng:</label>
									</div>
									<div class="col-lg-4 col-md-4 col-sm-4">
										<form:input path="Soluong" type="number" />
										<form:errors path="Soluong" style="color:red"></form:errors>
									</div>
									<div class="col-lg-2 col-md-2 col-sm-2">
										<label>Đơn vị tính:</label>
									</div>
									<div class="col-lg-4 col-md-4 col-sm-4">
										<form:input path="DonViTinh" placeholder="Nhập đơn vị tính" />
										<form:errors path="DonViTinh" style="color:red"></form:errors>
									</div>
								</div>
								<br>

								<div class="row">
									<div class="col-lg-2 col-md-2 col-sm-2">
										<label>Giá nhập:</label>
									</div>
									<div class="col-lg-4 col-md-4 col-sm-4">
										<form:input path="GiaNhap" type="number" />
										<form:errors path="GiaNhap" style="color:red"></form:errors>
									</div>
									<div class="col-lg-2 col-md-2 col-sm-2">
										<label>Giá bán:</label>
									</div>
									<div class="col-lg-4 col-md-4 col-sm-4">
										<form:input path="GiaBan" type="number" />
										<form:errors path="GiaBan" style="color:red"></form:errors>
									</div>
								</div>
								<br>

								<div class="row">
									<div class="col-lg-2 col-md-2 col-sm-2">
										<label>Tình trạng</label>
									</div>
									<div class="col-lg-10 col-md-10 col-sm-10">
										<form:select path="TinhTrang">
											<form:option value="Còn Hàng">Còn Hàng</form:option>
											<form:option value="Hàng Mới">Hàng Mới</form:option>
											<form:option value="Hết Hàng">Hết Hàng</form:option>
										</form:select>

									</div>

								</div>
								<br>

								<div class="row">
									<div class="col-lg-2 col-md-2 col-sm-2">
										<label>Hình</label>
									</div>
									<div class="col-lg-10 col-md-10 col-sm-10">
										<input name="photo" type="file" /><br>
										<form:errors path="Hinh" style="color:red"></form:errors>
									</div>
									
								</div>
								<br>

								<div class="row">
									<div class="col-lg-2 col-md-2 col-sm-2">
										<label>Tiêu đề</label>
									</div>
									<div class="col-lg-10 col-md-10 col-sm-10">
										<form:input path="TieuDe" placeholder="Nhập tiêu đề" />
										<form:errors path="TieuDe" style="color:red"></form:errors>
									</div>

								</div>
								<br>



								<div class="row">
									<div class="col-lg-2 col-md-2 col-sm-2">
										<label>Chi tiết</label>
									</div>
									<div class="col-lg-10 col-md-10 col-sm-10">
										<form:input path="ChiTiet" placeholder="Nhập chi tiết sản phẩm" />
										<form:errors path="ChiTiet" style="color:red"></form:errors>
									</div>

								</div>
								<br>

								<div class="row">

									<div class="col-lg-2 col-md-2 col-sm-2">
										<label>Loại sản phẩm</label>
									</div>
									<div class="col-lg-10 col-md-10 col-sm-10">
										<form:select path="LoaiSP">
											<form:option value="bàn">Bàn</form:option>
											<form:option value="ghế">Ghế</form:option>
											<form:option value="tủ">Tủ</form:option>
										</form:select>

									</div>

								</div>
								<br>

								<div class="row">
									<div class="col-lg-2 col-md-2 col-sm-2">
										<label>Ghi chú</label>
									</div>
									<div class="col-lg-10 col-md-10 col-sm-10">
										<form:input path="GhiChu" placeholder="Nhập ghi chú" />
									</div>

								</div>
								<br>

								<div class="row">
									<br>

									<div class="col-lg-12 col-md-12 col-sm-12">
										<input class="big " type="submit" value="Thêm sản phẩm " style="min-width: 200px; background-color: whiteblue; color: white ">
										<input class="big " type="reset" value="Hủy " style="min-width: 200px; background-color: gray; color: white ">
									</div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</section>
			<section class="main-content col-lg-2 col-md-2 col-sm-2 "></section>
		</div>