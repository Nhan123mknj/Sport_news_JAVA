<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<c:forEach items="${articles}" var="item">
	<div class="news-item">
		<div class="ni-pic">
			<img src="${item.image}" alt="">
		</div>
		<div class="ni-text">
			<h5>
				<a href="#">${item.title}</a>
			</h5>
			<ul>
				<li><i class="fa fa-calendar"></i> May 19, 2019</li>
				<li><i class="fa fa-edit"></i> 3 Comment</li>
			</ul>
		</div>
	</div>
</c:forEach>

