<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<body>
	<div class="col-sm-10">
		<div class="tab-content ">
			<h2>Thêm Quyền</h2>
			<hr>
			<form:form action="add.htm" modelAttribute="add-quyen" method="POST">
				<div class="form-group">
					<label>Tên Quyền :</label> <input type="text" class="form-control"
						id="TenQuyen" name="TenQuyen">
					<form:errors path="TenQuyen"
						cssStyle="color:red;display:block"></form:errors>
				</div>
				<div class="form-group">
					<label>Ghi Chú :</label> <input type="text" class="form-control"
						id="GhiChu" name="GhiChu">
						<form:errors path="GhiChu"
						cssStyle="color:red;display:block"></form:errors>
				</div>
				<button class="btn btn-default btn-lg btn-block form-group">Submit</button>
			</form:form>
		</div>
	</div>

</body>