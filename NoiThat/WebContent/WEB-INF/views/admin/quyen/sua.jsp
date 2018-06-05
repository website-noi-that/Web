<%@page import="poly.entity.Quyen"%>
<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<body>
	<div class="col-sm-10">
		<div class="tab-content ">
			<h2>Sửa Quyền</h2>
			<hr>
			<c:forEach var="list" items="${list}">
				<form:form action="${contextPath}/NoiThat/quyen/edit/${list.maQuyen}.htm" modelAttribute="edit-quyen" method="POST">
					<div class="form-group">
						<label>Mã Quyền :</label> <input type="text" class="form-control"
							id="MaQuyen" name="MaQuyen" value="${list.maQuyen}">

					</div>
					<div class="form-group">
						<label>Tên Quyền :</label> <input type="text" class="form-control"
							id="TenQuyen" name="TenQuyen" value="${list.tenQuyen}">

					</div>
					<div class="form-group">
						<label>Ghi Chú :</label> <input type="text" class="form-control"
							id="GhiChu" name="GhiChu" value="${list.ghiChu}">

					</div>
					<button class="btn btn-default btn-lg btn-block form-group">Submit</button>

				</form:form>
			</c:forEach>
		</div>
	</div>

</body>