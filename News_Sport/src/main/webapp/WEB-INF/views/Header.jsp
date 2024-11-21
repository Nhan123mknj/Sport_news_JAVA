<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Specer Template">
<meta name="keywords" content="Specer, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Tin tức thể thao</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
<!-- Offcanvas Menu Section Begin -->
<div class="offcanvas-menu-overlay"></div>

<div class="offcanvas-menu-wrapper">
	<div class="canvas-close">
		<i class="fa fa-close"></i>
	</div>
	<div class="search-btn search-switch">
		<i class="fa fa-search"></i>
	</div>
	<div class="header__top--canvas">
		<div class="ht-info">
			<ul>
				<fmt:formatDate value="<%= new java.util.Date() %>" pattern="HH:mm - MMM dd, yyyy" />
				<c:if test="${not empty sessionScope.user}">
					<li><a href="register.jsp">Đăng xuất</a></li>
				</c:if>

				<c:if test="${empty sessionScope.user}">
					<li><a href="register.jsp">Đăng ký</a></li>
					<li><a href="login.jsp">Đăng nhập</a></li>
				</c:if>


				<li><a href="#">Contact</a></li>
			</ul>
		</div>
		<div class="ht-links">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-vimeo"></i></a> <a href="#"><i class="fa fa-twitter"></i></a>
			<a href="#"><i class="fa fa-google-plus"></i></a> <a href="#"><i
				class="fa fa-instagram"></i></a>
		</div>
	</div>
	<ul class="main-menu mobile-menu">
		<li class="active"><a href="./index.html">Home</a></li>
		<li><a href="./club.html">Club</a></li>
		<li><a href="./schedule.html">Schedule</a></li>
		<li><a href="./result.html">Results</a></li>
		<li><a href="#">Sport</a></li>
		<li><a href="#">Pages</a>
			<ul class="dropdown">
				<li><a href="./blog.html">Blog</a></li>
				<li><a href="./blog-details.html">Blog Details</a></li>
				<li><a href="#">Schedule</a></li>
				<li><a href="#">Results</a></li>
			</ul></li>
		<li><a href="./contact.html">Contact Us</a></li>
	</ul>
	<div id="mobile-menu-wrap"></div>
</div>
<!-- Offcanvas Menu Section End -->

<!-- Header Section Begin -->
<header class="header-section">
	<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="ht-info">
						<ul>
							<li><fmt:formatDate value="<%= new java.util.Date() %>" pattern="HH:mm - MMM dd, yyyy" /></li>
							<c:if test="${sessionScope.user!=null}">
								<li><a href="logout">Đăng xuất</a></li>
								<li>Chào, <span>${sessionScope.user.username}</span></li>
							</c:if>
							<c:if test="${sessionScope.user.role==1}">
								<li><a href="admin">Admin</a></li>
							</c:if>
							<c:if test="${sessionScope.user==null}">
								<li><a href="register.jsp">Đăng ký</a></li>
								<li><a href="login.jsp">Đăng nhập</a></li>
							</c:if>
						</ul>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="ht-links">
						<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-vimeo"></i></a> <a href="#"><i class="fa fa-twitter"></i></a>
						<a href="#"><i class="fa fa-google-plus"></i></a> <a href="#"><i
							class="fa fa-instagram"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="header__nav">
		<div class="container">
			<div class="row">
				<div class="col-lg-2">
					<div class="logo">
						<a href="./index.html"><img src="assets/img/logo.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-10">
					<div class="nav-menu">
						<ul class="main-menu">
							<li class="active"><a href="./index.html">Home</a></li>
							<c:forEach items="${list}" var="item">
								<li><a href="#">${item.name}</a></li>
							</c:forEach>
							<li><a href="#">Pages</a>
								<ul class="dropdown">
									<li><a href="./blog.html">Blog</a></li>
									<li><a href="./blog-details.html">Blog Details</a></li>
									<li><a href="#">Schedule</a></li>
									<li><a href="#">Results</a></li>
								</ul></li>
							<li><a href="./contact.html">Contact Us</a></li>
						</ul>
						<div class="nm-right search-switch">
							<i class="fa fa-search"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="canvas-open">
				<i class="fa fa-bars"></i>
			</div>
		</div>
	</div>
</header>
<!-- Header End -->