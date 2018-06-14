<%@ page pageEncoding="utf-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

		<div class="row content">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="breadcrumbs">
					<p>
						<a href="#">Trang Chủ</a>
						<i class="icons icon-right-dir"></i> Tài Khoản
						<i class="icons icon-right-dir"> </i> Đăng Nhập
					</p>
				</div>
			</div>
			<!-- Main Content -->
			<section class="main-content col-lg-3 col-md-3 col-sm-3"></section>
			<section class="main-content col-lg-6 col-md-6 col-sm-6">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 register-account">
						<div class="carousel-heading no-margin">
							<h4>Đăng nhập</h4>
						</div>

						<div class="page-content">
							<div class="row">
								<p style="color: red; text-align: left; padding-left: 15px; font-size: 18px;">${messager}</p>
							</div>
							<form:form action="Ulogin.htm" modelAttribute="login" method="POST" id="formlogin">
								<div class="row">
									<div class="col-lg-4 col-md-4 col-sm-4">
										<p>Tài Khoản:</p>
									</div>
									<div class="col-lg-8 col-md-8 col-sm-8">
										<input type="text" name="TenDangNhap" id="TenDangNhap" value="${TK}">
									</div>
								</div>

								<div class="row">
									<div class="col-lg-4 col-md-4 col-sm-4">
										<p>Mật Khẩu:</p>
									</div>
									<div class="col-lg-8 col-md-8 col-sm-8">
										<input type="password" name="MatKhau" id="MatKhau">
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12 col-md-12 col-sm-12">
										<input class="big" type="submit" value="Đăng Nhập">
									</div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</section>
			<section class="main-content col-lg-3 col-md-3 col-sm-3"></section>
			<!-- /Main Content -->
			<script>
				window.onload = function () {
					document.getElementById("TenDangNhap").focus();
				};
			</script>
		</div>
		<!-- /Content -->