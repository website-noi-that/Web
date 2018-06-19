<!-- Người thực hiện : Huy Nhân -->

<%@ page pageEncoding="utf-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>

	<head>
		<jsp:include page="includes/head.jsp" />
	</head>

	<body>

		<div class="container-fluid">

			<jsp:include page="includes/header.jsp" />

			<jsp:include page="${param.view}" />

			<jsp:include page="includes/footer.jsp" />

		</div>
		<div id="back-to-top">
			<i class="icon-up-dir"></i>
		</div>


		<!-- JavaScript -->
		<jsp:include page="includes/script.jsp" />

	</body>

	</html>