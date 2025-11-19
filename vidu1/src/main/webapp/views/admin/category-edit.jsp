<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Cập nhật danh mục</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <style>
        body { background-color: #f0f2f5; display: flex; justify-content: center; align-items: center; min-height: 100vh; font-family: 'Segoe UI', sans-serif; }
        .form-card {
            background: white; padding: 40px; border-radius: 15px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); width: 100%; max-width: 500px;
        }
        .form-label { font-weight: 600; color: #555; }
        .form-control:focus { box-shadow: 0 0 0 0.25rem rgba(30, 136, 229, 0.25); border-color: #1e88e5; }
        .btn-success { background-color: #1e88e5; border-color: #1e88e5; padding: 10px 25px; } /* Dùng màu xanh dương thay vì xanh lá mặc định */
        .btn-success:hover { background-color: #1565c0; }
        .header-title { text-align: center; margin-bottom: 30px; color: #333; }
    </style>
</head>
<body>

    <div class="form-card">
        <h3 class="header-title">✏️ Cập nhật Danh Mục</h3>
        
        <form action="${pageContext.request.contextPath}/admin/categories/edit" method="post">
            
            <input type="hidden" name="cate_id" value="${cate.cate_id}">

            <div class="mb-4">
                <label class="form-label">Tên danh mục</label>
                <div class="input-group">
                    <span class="input-group-text bg-light"><i class="fa-solid fa-tag"></i></span>
                    <input type="text" class="form-control" name="cate_name" value="${cate.cate_name}" required>
                </div>
            </div>

            <div class="mb-4">
                <label class="form-label">Icon (Class FontAwesome)</label>
                <div class="input-group">
                    <span class="input-group-text bg-light"><i class="fa-solid fa-icons"></i></span>
                    <input type="text" class="form-control" name="icons" value="${cate.icons}">
                </div>
            </div>

            <div class="d-flex justify-content-between mt-5">
                <a href="${pageContext.request.contextPath}/admin/categories" class="btn btn-outline-secondary">
                    <i class="fa-solid fa-arrow-left"></i> Hủy bỏ
                </a>
                <button type="submit" class="btn btn-success">
                    <i class="fa-solid fa-check"></i> Lưu thay đổi
                </button>
            </div>
        </form>
    </div>

</body>
</html>