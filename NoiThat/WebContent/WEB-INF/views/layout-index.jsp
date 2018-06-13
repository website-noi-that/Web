<%
	String view = request.getParameter("view");
	if (view.startsWith("admin/dangnhap")) {
		pageContext.forward("admin/dangnhap.jsp");
	} else if (view.startsWith("admin/admin-login")) {
		pageContext.forward("admin/admin-login.jsp");
	} else if (view.startsWith("admin")) {
		pageContext.forward("layout-admin.jsp");
	} else {
		pageContext.forward("layout-user.jsp");
	}
%>