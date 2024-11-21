<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/Header_Admin.jsp" />
<div class="content-wrapper">
    <div class="container-xxl flex-grow-1 container-p-y">
        <div style="display: flex; justify-content: space-between;">
            <h4 class="py-3 mb-4">Quản lý danh mục</h4>
            <div>
                <a class="btn btn-primary" href="categories/add_categories.jsp"><i class="bx bx-plus me-1"></i> Thêm danh mục</a>
            </div>
        </div>

        <!-- Table for categories -->
        <div class="card">
            <div class="table-responsive text-nowrap">
                <table class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Tên danh mục</th>
                            <th>Mô tả</th>
                            <th>Trạng thái</th>
                            <th>Hành động</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listcate}" var="item">
                            <tr>
                                <td>${item.id}</td>
                                <td>${item.name}</td>
                                <td>${item.description}</td>
                                <c:if test="${item.is_Active == 1}">
                                    <td><span class="badge bg-label-success">Đã kích hoạt</span></td>
                                </c:if>
                                <c:if test="${item.is_Active == 0}">
                                    <td><span class="badge bg-label-warning">Chưa kích hoạt</span></td>
                                </c:if>
                                <td>
                                    <a href="${pageContext.request.contextPath}/admin/update-categories?id=${item.id}" class="btn btn-sm btn-warning">Sửa</a>
                                    <a href="delete-categories?id=${item.id}" class="btn btn-sm btn-danger">Xóa</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/views/Footer_Admin.jsp" />
