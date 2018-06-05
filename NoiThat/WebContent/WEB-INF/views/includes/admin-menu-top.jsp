<!-- Người thực hiện : Huy Nhân -->

<%@ page pageEncoding="utf-8"%>

<div class="navbar navbar-default navbar-top">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-collapse">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
		<a target="_blank" href="#" class="navbar-brand"><span
			class="glyphicon glyphicon-home"></span> Home Shop Admin</a>
	</div>

	<div class="collapse navbar-collapse">

		<ul class="nav navbar-nav navbar-right">
			<li class="light-blue"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">   <strong>Xin Chào, Mày</strong> <span
					class="glyphicon glyphicon-triangle-bottom"></span>
			</a>

				<ul
					class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">
					<li><a href="#"> <i class="glyphicon glyphicon-cog"></i>
							Cài Đặt
					</a></li>

					<li><a href="#"> <i class="glyphicon glyphicon-user"></i>
							Hồ Sơ
					</a></li>

					<li class="divider"></li>

					<li><a href="${contextPath}/NoiThat/admin/logout.htm"> <i class="glyphicon glyphicon-log-out"></i>
							Đăng Xuất
					</a></li>
				</ul></li>

		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li class="grey"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <span
					class="glyphicon glyphicon-tasks"></span> <span
					class="badge badge-grey">4</span>
			</a>

				<ul class="dropdown-navbar dropdown-menu">
					<li class="nav-header"><i class="icon-ok"></i> 4 Công việc cần
						hoàn thành</li>

					<li><a href="#">
							<div class="clearfix">
								<span class="pull-left">Cập nhật phần mềm</span> <span
									class="pull-right">65%</span>
							</div>
							<div class="progress progress-mini ">
								<div style="width: 65%" class="bar"></div>
							</div>
					</a></li>
				</ul></li>

			<li class="purple"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <span
					class="glyphicon glyphicon-bell"></span> <span
					class="badge badge-important">8</span>
			</a>

				<ul
					class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-closer">
					<li class="nav-header"><i class="icon-warning-sign"></i> 8
						Thông báo</li>

					<li><a href="#">
							<div class="clearfix">
								<span class="pull-left"> <i
									class="btn btn-mini no-hover btn-info icon-twitter"></i> Người
									theo dõi
								</span> <span class="pull-right badge badge-info">+11</span>
							</div>
					</a></li>

					<li><a href="#"> Xem tất cả thông báo <i
							class="icon-arrow-right"></i>
					</a></li>
				</ul></li>

			<li class="green"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <span
					class="glyphicon glyphicon-envelope"></span> <span
					class="badge badge-success">5</span>
			</a>

				<ul
					class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-closer">
					<li class="nav-header"><i class="icon-envelope-alt"></i> 5 Tin
						nhắn</li>

					<li><a href="#"> <img src="../admin/avatars/avatar.png"
							class="msg-photo" alt="Alex's Avatar" /> <span class="msg-body">
								<span class="msg-title"> <span class="blue">Tâm:</span>
									Tôi muốn đươc tư vấn về sản phẩm ...
							</span> <span class="msg-time"> <i class="icon-time"></i> <span>1
										phút trước</span>
							</span>
						</span>
					</a></li>



					<li><a href="#"> Xem tất cả tin nhắn <i
							class="icon-arrow-right"></i>
					</a></li>
				</ul></li>
		</ul>
	</div>
</div>


