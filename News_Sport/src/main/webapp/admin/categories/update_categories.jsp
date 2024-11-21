<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/Header_Admin.jsp" />
<div class="row">
	<div class="col-md-6" style="padding-top: 20px; margin: 0 auto;">
		<div class="card mb-4">
			<div
				class="card-header d-flex justify-content-between align-items-center">
				<h5 class="mb-0">Sửa thể loại</h5>
				<small class="text-muted float-end">Default label</small>
			</div>
			<div class="card-body">
				<form method="post"
					action="${pageContext.request.contextPath}/admin/update-categories">
					<input type="hidden" name="id" value="${category.id}" />
					<div class="mb-3">
						<label class="form-label" for="category_name">Tên thể loại</label>
						<input type="text" class="form-control" id="category_name"
							placeholder="Nhập tên thể loại" value="${category.name}"
							name="name" required />
					</div>
					<div class="mb-3">
						<label class="form-label" for="category_description">Mô tả</label>
						<textarea class="form-control" id="category_description"
							name="description" placeholder="Nhập chi tiết" rows="10"
							>${category.description}</textarea>
					</div>
					<div class="mb-3">
						<label class="form-label" for="category_is_active">Trạng
							thái</label> <select class="form-control" id="category_is_active"
							name="is_Active" required>
							<option value="1" ${category.is_Active == 1 ? 'selected' : ''}>Kích
								hoạt</option>
							<option value="0" ${category.is_Active == 0 ? 'selected' : ''}>Không</option>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">Sửa thể loại</button>
					<a style="margin-left: 20px;" class="btn btn-secondary"
						href="categories/index.jsp">Quay lại</a>
				</form>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/Footer_Admin.jsp" />
