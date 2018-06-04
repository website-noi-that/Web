<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div>
	<div class="tab-content ">


		<div>
			<h2>
				<b>Danh Sách Tài Khoản Nhân Viên</b> <a type="button"
					class="button btn btn-success" href="add.htm"><span
					class="glyphicon glyphicon-import"></span> Thêm Tài Khoản</a>
			</h2>

		</div>
		<table
			class="table table-striped table-bordered table-hover table-condensed">
			<tr>
				<th>Mã Users</th>
				<th>Tài Khoản</th>
				<th>Mật Khẩu</th>
				<th>Nhân Viên</th>
				<th>Quyền</th>
				<th></th>
				<th></th>
			</tr>
			<c:forEach var="us" items="${list}">
				<tr>
					<td>${us.maUsers}</td>
					<td>${us.tenDangNhap}</td>
					<td>${us.matKhau}</td>
					<td>${us.maNhanVien}</td>
					<td>${us.maQuyen}</td>
					<td><a type="button" class="btn" href="edit/${us.maUsers}.htm"><span
							class="glyphicon glyphicon-edit"></span> Sửa</a></td>
					<td><a type="button" class="btn"
						href="delete/${us.maUsers}.htm"><span
							class="glyphicon glyphicon-remove"></span> Xóa</a></td>
				</tr>
			</c:forEach>
		</table>


	</div>
</div>