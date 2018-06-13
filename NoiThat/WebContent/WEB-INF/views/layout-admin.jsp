<%@page import="java.net.CookieStore"%>
	<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
		<%@page import="org.springframework.web.bind.annotation.CookieValue"%>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
				<html>

				<head>
					<jsp:include page="includes/admin-head.jsp" />
				</head>

				<body>
					<c:choose>
						<c:when test="${cookie.quyen.value == 1}">
							<!-- menu top -->
							<div class="container-full">
								<div class="row">
									<jsp:include page="includes/admin-menu-top.jsp" />
								</div>
								<div class="">
									<div>
										<div class="col-sm-2 col-md-2">
											<jsp:include page="includes/admin-menu-left.jsp" />
											<!-- thanh menu quản lý  -->
										</div>
										<div class="col-sm-10">
											<jsp:include page="${param.view}" />
										</div>
									</div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<jsp:include page="loi.jsp" />
						</c:otherwise>
					</c:choose>
					<!-- JavaScript -->
					<jsp:include page="includes/admin-script.jsp" />
				</body>

				</html>