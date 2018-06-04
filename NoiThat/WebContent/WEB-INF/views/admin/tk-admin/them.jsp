<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<body>
	<div class="col-sm-10">
		<div class="tab-content ">
			<h2>Thêm Tài Khoản Nhân Viên</h2>
			<hr>
			<form:form action="add.htm" modelAttribute="Adduser" method="POST">
				<div class="form-group">
					<label>Tài Khoản :</label> <input type="text" class="form-control"
						id="TenDangNhap" name="TenDangNhap">
					<form:errors path="TenDangNhap"
						cssStyle="color:red;display:block"></form:errors>
				</div>
				<div class="form-group">
					<label>Mật Khẩu :</label> <input type="password"
						class="form-control" id="MatKhau" name="MatKhau">
					<form:errors path="MatKhau"
						cssStyle="color:red;display:block"></form:errors>
				</div>
				<div class="form-group">
					<label>Nhân Viên :</label> <input type="text" class="form-control"
						id="MaNhanVien" name="MaNhanVien">
					<form:errors path="MaNhanVien"
						cssStyle="color:red;display:block"></form:errors>
				</div>
				<div class="form-group">
					<label>Quyền :</label> <input type="text" class="form-control"
						id="MaQuyen" name="MaQuyen">
						<form:errors path="MaQuyen"
						cssStyle="color:red;display:block"></form:errors>
				</div>
				<button class="btn btn-default btn-lg btn-block form-group">Submit</button>
			</form:form>
		</div>
	</div>

</body>