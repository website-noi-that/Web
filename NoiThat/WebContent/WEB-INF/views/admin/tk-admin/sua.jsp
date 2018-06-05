<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<body>
	<div class="col-sm-10">
		<div class="tab-content ">
		<h2>Sửa Tài Khoản Nhân Viên</h2>
		<hr>
		<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
		<c:forEach var="list" items="${list}">
			<form:form action="${contextPath}/NoiThat/admin/edit/${list.maUsers}.htm" modelAttribute="edituser" method="POST">
			<div class="form-group">
				<label>Mã User :</label> <input type="text" class="form-control"
					id="MaUsers" name="MaUsers" value="${list.maUsers}">
			</div>
			<div class="form-group">
				<label>Tài Khoản :</label> <input type="text" class="form-control"
					id="TenDangNhap" name="TenDangNhap" value="${list.tenDangNhap}">
			</div>
			<div class="form-group">
				<label>Mật Khẩu :</label> <input type="password" class="form-control"
					id="MatKhau" name="MatKhau" value="${list.matKhau}">
			</div>
			<div class="form-group">
				<label>Nhân Viên :</label> <input type="text" class="form-control"
					id="MaNhanVien" name="MaNhanVien" value="${list.maNhanVien}">
			</div>
			<div class="form-group">
				<label>Quyền :</label> <input type="text" class="form-control"
					id="MaQuyen" name="MaQuyen" value="${list.maQuyen}">
			</div>
			<button class="btn btn-default btn-lg btn-block form-group">Submit</button>
		</form:form>
		</c:forEach>
		</div>
	</div>
	
</body>