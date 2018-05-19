<%@page import="java.net.CookieStore"%>
<%@page import="poly.entity.Users"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="org.springframework.web.bind.annotation.CookieValue"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Admin</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="../css/style-index-admin.css">

</head>
<body>
	<div class="container-fluid ">
		<nav class="navbar navbar-inverse">
		<div class="navbar-header">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" class="btn-lg"><i class="fa fa-gift fa-lg"></i><span
						class="glyphicon glyphicon-tasks"></span> Menu</a></li>
			</ul>
		</div>
		<ul class="nav pull-right navbar-nav">
			
		
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">Welcome, ${users } <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="#"><i class="glyphicon glyphicon-wrench"></i> Preferences</a></li>
					<li class="divider"></li>
					<li><a href="logout.htm"><i class="glyphicon glyphicon-log-out"></i> Logout</a></li>
				</ul></li>
		</ul>	
		</nav>
	</div>
	<div class="container-fluid ">
		<div class="col-sm-2 sidenav1" id="Tasks">
			<ul class="nav nav-pills nav-stacked ">
				<li class="active"><a data-toggle="tab" href="#home"> <span
						class="glyphicon glyphicon-home"></span> Trang Chủ
				</a></li>
				<li data-toggle="collapse" data-target="#taikhoan"
					class="collapsed "><a><span
						class="glyphicon glyphicon-user"></span> Quản Lý Tài Khoản</a>
					<ul class="sub-menu collapse nav" id="taikhoan">
						<li><a href="list-user-admin.htm"><span
								class="glyphicon glyphicon-triangle-right"></span> Nhân Viên</a></li>
						<li><a href="#"><span
								class="glyphicon glyphicon-triangle-right"></span> Khách Hàng</a></li>
						<li><a href="#"><span
								class="glyphicon glyphicon-triangle-right"></span> Quyền</a></li>
					</ul></li>
				<li><a href="#menu2"> <span
						class="glyphicon glyphicon-briefcase"></span> Quản Lý Nhân Viên
				</a></li>
				<li><a href="#menu3"> <span class="glyphicon glyphicon-bed"></span>
						Quản Lý Sản Phẩm
				</a></li>
				<li><a href="#menu4"> <span
						class="glyphicon glyphicon-list-alt"></span> Quản Lý Hóa Đơn
				</a></li>
			</ul>
			<br>

		</div>
		<article> <jsp:include page="${param.view}" /> </article>

	</div>
</body>
</html>