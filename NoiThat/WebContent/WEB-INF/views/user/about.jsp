<%@ page pageEncoding="utf-8"%>


    <!-- Content -->
    <div class="row content">

        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="breadcrumbs">
                <p>
                    <a href="index.html">Trang chủ</a>
                    <i class="icons icon-right-dir"></i> Liên Hệ</p>
            </div>
        </div>

        <!-- Main Content -->
        <section class="main-content col-lg-12 col-md-12 col-sm-12">


            <div class="row">

                <div class="col-lg-7 col-md-7 col-sm-7">

                    <div class="carousel-heading no-margin">
                        <h4>Thông tin liên lạc</h4>
                    </div>

                    <div class="page-content contact-info">

                        <iframe width="425" height="350" src="https://maps.google.rs/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=marmora+road&amp;sll=44.210767,20.922416&amp;sspn=4.606139,10.821533&amp;ie=UTF8&amp;hq=&amp;hnear=Marmora+Rd,+London+SE22+0RX,+United+Kingdom&amp;t=m&amp;z=14&amp;ll=51.451955,-0.055755&amp;output=embed"></iframe>
                        <div class="row">

                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="contact-item green">
                                    <i class="icons icon-location-3"></i>
                                    <p>8901 Marmora Road,
                                        <br> Glasgow, D04 89GR.</p>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="contact-item blue">
                                    <i class="icons icon-mail"></i>
                                    <p>
                                        <a href="#">info@companyname.com</a>
                                        <br>
                                        <a href="#">sales@companyname.com</a>
                                    </p>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="contact-item orange">
                                    <i class="icons icon-phone"></i>
                                    <p>800-559-65-80
                                        <br> 800-603-60-35
                                    </p>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="contact-item purple">
                                    <i class="icons icon-clock"></i>
                                    <p>Monday - Friday: 08.00-20.00
                                        <br> Saturday: 09.00-15.00
                                        <br> Sunday: closed</p>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>




                <div class="col-lg-5 col-md-5 col-sm-5">

                    <div class="carousel-heading no-margin">
                        <h4>Contact Form</h4>
                    </div>

                    <div class="page-content contact-form">

                        <form id="contact-form" action="sendabout.htm" method="post">
                            <span class="error"></span>
                            <label>Họ Tên *</label>
                            <input name="contact-name" type="text" id="name">
                            <p style="color:red;display: none;" class="error errorName"></p>
                            <label>Email *</label>
                            <input name="contact-email" type="text" id="email">
                            <p style="color:red;display: none;" class="error errorLogin"></p>

                            <label>Tiêu dề</label>
                            <input name="contact-subject" type="text">

                            <label>Nội dung</label>
                            <textarea name="contact-message"></textarea>

                            <input class="big" type="submit" value="	Gửi		">

                        </form>
                    </div>

                </div>


            </div>

        </section>
        <!-- /Main Content -->


    </div>
    <!-- /Content -->