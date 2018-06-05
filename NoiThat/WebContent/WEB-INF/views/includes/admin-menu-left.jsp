<!-- Người thực hiện : Huy Nhân -->

<%@ page pageEncoding="utf-8"%>
<div class="sidebar">
	<ul class="nav nav-pills nav-stacked ">
		<li><a data-toggle="tab" href="#home"> <span
				class="glyphicon glyphicon-home"></span> Trang Chủ
		</a></li>

		<li data-toggle="collapse" data-target="#taikhoan" class="collapsed "><a><span
				class="glyphicon glyphicon-user"></span> Quản Lý Tài Khoản</a>
			<ul class="sub-menu collapse nav" id="taikhoan">
				<li><a href="${contextPath}/NoiThat/admin/list-user-admin.htm"><span
						class="glyphicon glyphicon-triangle-right"></span> Nhân Viên</a></li>
				<li><a href="${contextPath}/NoiThat/quyen/list-quyen-admin.htm"><span
						class="glyphicon glyphicon-triangle-right"></span> Quyền</a></li>
			</ul></li>
		<li data-toggle="collapse" data-target="#nhanvien" class="collapsed "><a><span
				class="glyphicon glyphicon-user"></span> Quản Lý Nhân Viên</a>
			<ul class="sub-menu collapse nav" id="nhanvien">
				<li><a href="#"><span
						class="glyphicon glyphicon-triangle-right"></span> Nhân Viên</a></li>
				<li><a href="#"><span
						class="glyphicon glyphicon-triangle-right"></span> Phòng Ban</a></li>
			</ul></li>
		<li><a href="#"> <span class="glyphicon glyphicon-bed"></span>
				Quản Lý Sản Phẩm
		</a></li>
		<li><a href="#"> <span class="glyphicon glyphicon-list-alt"></span>
				Quản Lý Hóa Đơn
		</a></li>
	</ul>
</div>