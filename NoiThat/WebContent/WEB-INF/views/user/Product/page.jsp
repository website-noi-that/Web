<%@ page pageEncoding="utf-8"%>

    <!-- Main Content -->
    <section class="main-content col-lg-12 col-md-12 col-sm-12">
        <div id="product-single">
            <!-- Product -->
            <div class="product-single">
                <div class="row">
                    <!-- Product Images Carousel -->
                    <div class="col-lg-5 col-md-5 col-sm-5 product-single-image">
                        <div id="product-slider">
                            <ul class="slides">
                                <li>
                                    <img class="cloud-zoom" src="img/product/${page.hinh}" data-large="img/product/${page.hinh}" =alt="${page.tenSP} style="width: 300px; height: 350px;"/>
                                    <a class="fullscreen-button" href="img/product/${page.hinh}">
                                        <div class="product-fullscreen">
                                            <i class="icons icon-resize-full-1"></i>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div id="product-carousel">
                            <ul class="slides">
                                <li>
                                    <a class="fancybox" rel="product-images" href="img/product/${page.hinh}" ></a>
                                    <img src="img/product/${page.hinh}" data-large="img/product/${page.hinh}" alt="${page.tenSP}" />
                                </li>
                            </ul>
                            <div class="product-arrows">
                                <div class="left-arrow">
                                    <i class="icons icon-left-dir"></i>
                                </div>
                                <div class="right-arrow">
                                    <i class="icons icon-right-dir"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Product Images Carousel -->


                    <div class="col-lg-7 col-md-7 col-sm-7 product-single-info">

                        <h2>${page.tenSP}</h2>
                        <div class="rating-box">
                            <div class="rating readonly-rating" data-score="4"></div>
                            <span>3 Đánh giá(s)</span>
                        </div>
                        <table>
                            <tr>
                                <td>Xuất Xứ: </td>
                                <td>
                                    <a href="#">${page.xuatXu}</a>
                                </td>
                            </tr>
                            <tr>
                                <td>Kho hàng</td>
                                <td>
                                    <font color="#2ecc71">Còn lại ${page.soluong} sản phẩm</font>
                                </td>
                            </tr>
                            <tr>
                                <td>Mã sản phẩm</td>
                                <td>${page.maSP}</td>
                            </tr>
                        </table>
                        <span class="price">${page.giaBan} đ</span>

                        <table class="product-actions-single">
                            <tr>
                                <td>Số lượng</td>
                                <td>
                                    <div class="numeric-input">
                                        <input type="text" value="1">
                                        <span class="arrow-up">
                                            <i class="icons icon-up-dir"></i>
                                        </span>
                                        <span class="arrow-down">
                                            <i class="icons icon-down-dir"></i>
                                        </span>
                                    </div>
                                    <a href="#">
                                        <span class="add-to-cart">
                                            <span class="action-wrapper">
                                                <i class="icons icon-basket-2"></i>
                                                <span class="action-name">Add to cart</span>
                                            </span>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                        </table>

                        <div class="product-actions">
                            <span class="add-to-favorites">
                                <span class="action-wrapper">
                                    <i class="icons icon-heart-empty"></i>
                                    <span class="action-name">Thêm vào giỏ hàng</span>
                                </span>
                            </span>
                            <span class="add-to-compare">
                                <span class="action-wrapper">
                                    <i class="icons icon-docs"></i>
                                    <span class="action-name">Thêm vào yêu thích</span>
                                </span>
                            </span>
                            <span class="green product-action">
                                <span class="action-wrapper">
                                    <i class="icons icon-info"></i>
                                    <span class="action-name">Thêm vào so sánh</span>
                                </span>
                            </span>
                        </div>

                    </div>

                </div>

            </div>
            <!-- /Product -->


            <!-- Product Tabs -->
            <div class="row">

                <div class="col-lg-12 col-md-12 col-sm-12">

                    <div class="tabs">

                        <div class="tab-heading">
                            <a href="#tab1" class="button big">Mô tả</a>&nbsp;
                            <a href="#tab2" class="button big">Đánh giá</a>
                            <a href="#tab3" class="button big">Bình luận</a>
                        </div>

                        <div class="page-content tab-content">

                            <div id="tab1">
                                ${page.chiTiet}
                            </div>

                            <div id="tab2">
                                <h2>* Hệ thống đang cập nhập !!!</h2>


                            </div>

                            <div id="tab3">
                                <h2>* Hệ thống đang cập nhập !!!</h2>

                            </div>

                        </div>

                    </div>

                </div>

            </div>
            <!-- /Product Tabs -->

        </div>


    </section>
    <!-- /Main Content -->