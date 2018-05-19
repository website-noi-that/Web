<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page import="java.net.CookieStore"%>
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
<link rel="stylesheet" href="../css/style-dangnhap.css">

</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="col-md-offset-4 col-md-4" id="boxdn">
				<h2>Đăng Nhập</h2>
				<hr>
				<form:form class="form-horizontal" action="Login.htm"
					modelAttribute="login" method="POST">

					<div class="form-group">
						<div class="col-md-12">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-user"></i></span> <input name="TenDangNhap"
									placeholder="UserName" class="form-control" type="text">
							</div>
						</div>
						<div class="col-md-12">
							${messager1}
						</div>
						
					</div>
					<div class="form-group">
						<div class="col-md-12">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input name="MatKhau"
									placeholder="Password" class="form-control" type="Password">
							</div>
						</div>
						${messager2}
					</div>
					<div class="form-group">
						<div class="col-md-12">
							<button class="btn btn-default btn-lg btn-block">Submit</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>