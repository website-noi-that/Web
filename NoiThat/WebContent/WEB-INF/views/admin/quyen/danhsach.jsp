<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div>
	<div class="tab-content ">
		<div>
			<h2>
				<b>Danh Sách Phân Quyền</b> <a type="button"
					class="btn btn-success button"
					href="${contextPath}/NoiThat/quyen/add-quyen.htm"><span
					class="glyphicon glyphicon-import"></span> Thêm Quyền</a>
			</h2>

		</div>
		<table
			class="table table-striped table-bordered table-hover table-condensed">
			<tr>
				<th>Mã Quyền</th>
				<th>Tên Quyền</th>
				<th>Ghi Chú</th>
				<th></th>
				<th></th>
			</tr>
			<c:forEach var="q" items="${list}">
				<tr>
					<td>${q.maQuyen}</td>
					<td>${q.tenQuyen}</td>
					<td>${q.ghiChu}</td>
					<td><a type="button" class="btn"
						href="${contextPath}/NoiThat/quyen/edit/${q.maQuyen}.htm"><span
							class="glyphicon glyphicon-edit"></span> Sửa</a></td>
					<td><a type="button" class="btn"
						href="${contextPath}/NoiThat/quyen/delete/${q.maQuyen}.htm"><span
							class="glyphicon glyphicon-remove"></span> Xóa</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
