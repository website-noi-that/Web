<!-- Người thực hiện : Huy Nhân -->

<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container">

	<!-- Header -->
	<header class="row">

		<div class="col-lg-12 col-md-12 col-sm-12">

			<!-- Top Header -->
			<div id="top-header">

				<div class="row">

					<nav id="top-navigation" class="col-lg-7 col-md-7 col-sm-7">
						<ul class="pull-left">
							<li><a href="create_an_account.html">Tài khoản của tôi</a></li>
							<li><a href="orders_list.html">Danh sách đơn đặt hàng</a></li>
							<li><a href="order_info.html">Kiểm tra</a></li>
							<li><a href="text_page.html">Giới thiệu</a></li>
							<li><a href="contact.html">Liên hệ</a></li>
						</ul>
					</nav>


				</div>

			</div>
			<!-- /Top Header -->



			<!-- Main Header -->
			<div id="main-header">

				<div class="row">

					<div id="logo" class="col-lg-4 col-md-4 col-sm-4">
						<a href="home_v1.html"><img src="img/logo.png" alt="Logo"></a>
					</div>

					<nav id="middle-navigation" class="col-lg-8 col-md-8 col-sm-8">
						<ul class="pull-right">
							<li class="blue"><a href="compare_products.html"><i
									class="icons icon-docs"></i>0 SP</a></li>
							<li class="red"><a href="wishlist.html"><i
									class="icons icon-heart-empty"></i>2 SP</a></li>

							<!--		Giỏ hàng-->
							<li class="orange"><a href="order_info.html"><i
									class="icons icon-basket-2"></i>17 SP</a>
								<ul id="cart-dropdown" class="box-dropdown parent-arrow">
									<li>
										<div class="box-wrapper parent-border">
											<p>Các mục được thêm gần đây</p>



											<table class="cart-table">
												<tr>
													<td><img src="img/products/sp1.PNG" alt="product"></td>
													<td>
														<h6>Tủ bếp thương hiệu Pháp</h6>
														<p>Được nhập khẩu từ Pháp</p>
													</td>
													<td><span class="quantity"><span class="light">1
																x</span> 8.000.000đ</span> <a href="#" class="parent-color">Xóa</a></td>
												</tr>

											</table>


											<br class="clearfix">
										</div>

										<div class="footer">
											<table class="checkout-table pull-right">
												<tr>
													<td class="align-right">Thuế:</td>
													<td>10%</td>
												</tr>
												<tr>
													<td class="align-right">Giảm giá:</td>
													<td>200.000đ</td>
												</tr>
												<tr>
													<td class="align-right"><strong>Tổng:</strong></td>
													<td><strong class="parent-color">12.000.000đ</strong></td>
												</tr>
											</table>
										</div>


										<div class="box-wrapper no-border">
											<a class="button pull-right parent-background" href="#">Kiểm
												tra</a> <a class="button pull-right" href="order_info.html">Xem
												giỏ hàng</a>
										</div>

									</li>
								</ul></li>
							<!--	=============Đóng phần Giỏ hàng==========================				-->
							<li class="login-create purple"><i class="icons icon-user"></i>
								<p>
									Xin chào bạn!<a href="#">Đăng nhập </a> hoặc<br> <a
										href="#">đăng ký</a>
								</p> </li>
						</ul>
					</nav>

				</div>

			</div>
			<!-- /Main Header -->


			<!-- Main Navigation -->
			<nav id="main-navigation" class="style3">
				<ul>

					<li class="home-green current-item"><a href="home_v1.html">
							<span class="nav-caption">Home</span>
					</a>

						<ul class="normal-dropdown normalAnimation">
							<li><a href="#">Danh mục<i class="icons icon-right-dir"></i></a>
								<ul class="normalAnimation">
									<li><a href="home_v1.html">Danh mục 1</a></li>
									<li><a href="home_v2.html">Danh mục 2</a></li>
									<li><a href="home_v3.html">Danh mục 3</a></li>
								</ul></li>
							<li><a href="#">Sản phẩm <i class="icons icon-right-dir"></i></a>
								<ul class="normalAnimation">
									<li><a href="home_v1.html">Sản phẩm 1</a></li>
									<li><a href="home_v2.html">Sản phẩm 2</a></li>
									<li><a href="home_v3.html">Sản phẩm 3</a></li>
									<li><a href="category_v1.html">Sản phẩm 4</a></li>
									<li><a href="category_v2.html">Sản phẩm 5</a></li>
									<li><a href="products_page_v1.html">Sản phẩm 6</a></li>
								</ul></li>

							<li><a href="#">Giao diện <i
									class="icons icon-right-dir"></i></a>
								<ul class="normalAnimation">
									<li><a href="home_v1.html">Giao diện 1</a></li>
									<li><a href="home_v2.html">Giao diện 2</a></li>
									<li><a href="home_v3.html">Giao diện 3</a></li>
								</ul></li>
						</ul></li>

					<li class="red"><a href="#"> <span class="nav-caption">Sản
								phẩm</span>
					</a>

						<ul class="wide-dropdown normalAniamtion">
							<li>
								<ul>
									<li><span class="nav-caption">Phòng khách</span></li>
									<li><a href="category_v1.html"><i
											class="icons icon-right-dir"></i> Sofa</a></li>
									<li><a href="category_v1.html"><i
											class="icons icon-right-dir"></i> Bàn &amp; Tủ</a></li>
									<li><a href="category_v1.html"><i
											class="icons icon-right-dir"></i> Hàng trang trí</a></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><span class="nav-caption">Phòng ăn</span></li>
									<li><a href="category_v1.html"><i
											class="icons icon-right-dir"></i>Bàn ăn</a></li>
									<li><a href="category_v1.html"><i
											class="icons icon-right-dir"></i> Ghế</a></li>
									<li><a href="category_v1.html"><i
											class="icons icon-right-dir"></i> Tủ</a></li>
									<li><a href="category_v1.html"><i
											class="icons icon-right-dir"></i> Hàng trang trí</a></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><span class="nav-caption">Phòng ngủ</span></li>
									<li><a href="category_v1.html"><i
											class="icons icon-right-dir"></i> Giường</a></li>
									<li><a href="category_v1.html"><i
											class="icons icon-right-dir"></i>Tủ &amp;Bàn</a></li>
									<li><a href="category_v1.html"><i
											class="icons icon-right-dir"></i> Tranh ảnh </a></li>
									<li><a href="category_v1.html"><i
											class="icons icon-right-dir"></i> Hàng trang trí</a></li>
								</ul>
							</li>
						</ul></li>

					<li class="blue"><a href="category_v2.html"> <span
							class="nav-caption">Giới thiệu</span>
					</a></li>



					<li class="green"><a href="blog.html"> <span
							class="nav-caption">Tin tức</span>
					</a></li>

					<li class="purple"><a href="contact.html"> <span
							class="nav-caption">Liên hệ</span>
					</a></li>

					<li class="nav-search"><i class="icons icon-search-1"></i></li>

				</ul>

				<div id="search-bar">

					<div class="col-lg-12 col-md-12 col-sm-12">
						<table id="search-bar-table">
							<tr>
								<td class="search-column-1">
									<p>
										<span class="grey">Tìm kiếm:</span> <a href="#">Bàn</a>, <a
											href="#">ghế</a>, <a href="#">tủ</a>, <a href="#">hàng
											trang trí</a>,<a href="#">khác</a>
									</p> <input type="text" placeholder="Nhập từ khóa của bạn">
								</td>
								<td class="search-column-2">
									<p class="align-right">
										<a href="#">Tìm kiếm nâng cao</a>
									</p> <select class="chosen-select-search">
										<option>Danh mục 1</option>
										<option>Danh mục 2</option>
										<option>Danh mục 3</option>
								</select>
								</td>
							</tr>
						</table>
					</div>
					<div id="search-button">
						<input type="submit" value=""> <i
							class="icons icon-search-1"></i>
					</div>
				</div>

			</nav>
			<!-- /Main Navigation -->

		</div>

	</header>