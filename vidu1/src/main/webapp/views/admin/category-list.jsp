<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản lý danh mục</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    
    <style>
        /* Copy style Sidebar từ Home hoặc để vào file CSS chung */
        body { background-color: #f0f2f5; font-family: 'Segoe UI', sans-serif; }
        .sidebar { height: 100vh; width: 260px; position: fixed; top: 0; left: 0; background: linear-gradient(180deg, #5563DE 0%, #74ABE2 100%); color: white; padding-top: 20px; z-index: 1000; }
        .sidebar-header { text-align: center; margin-bottom: 30px; } .sidebar-header h3 { font-weight: 700; font-size: 22px; }
        .nav-link { color: rgba(255,255,255,0.8); padding: 12px 25px; display: flex; align-items: center; text-decoration: none; }
        .nav-link i { width: 30px; } .nav-link:hover, .nav-link.active { background-color: rgba(255,255,255,0.2); color: white; }
        .main-content { margin-left: 260px; padding: 30px; }
        
        /* Table Styling */
        .card-table { background: white; border-radius: 10px; padding: 20px; box-shadow: 0 2px 10px rgba(0,0,0,0.05); }
        .table thead th { background-color: #f8f9fa; border-bottom: 2px solid #dee2e6; color: #555; font-weight: 600; }
        .table-hover tbody tr:hover { background-color: #f1f3ff; }
        .btn-action { width: 35px; height: 35px; padding: 0; line-height: 35px; text-align: center; border-radius: 50%; margin: 0 2px; transition: 0.2s; border: none; }
        .btn-edit { background-color: #e3f2fd; color: #1e88e5; } .btn-edit:hover { background-color: #1e88e5; color: white; }
        .btn-delete { background-color: #ffebee; color: #e53935; } .btn-delete:hover { background-color: #e53935; color: white; }
    </style>
</head>
<body>

    <div class="sidebar">
        <div class="sidebar-header"><h3><i class="fa-brands fa-uniregistry"></i> MyAdmin</h3></div>
        <nav>
            <a href="${pageContext.request.contextPath}/admin/home" class="nav-link"><i class="fa-solid fa-house"></i> Tổng quan</a>
            <a href="${pageContext.request.contextPath}/admin/categories" class="nav-link active"><i class="fa-solid fa-layer-group"></i> Quản lý danh mục</a>
             <a href="${pageContext.request.contextPath}/logout" class="nav-link"><i class="fa-solid fa-right-from-bracket"></i> Đăng xuất</a>
        </nav>
    </div>

    <div class="main-content">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h3 class="m-0 text-dark fw-bold">Danh sách danh mục</h3>
            <a href="${pageContext.request.contextPath}/admin/categories/add" class="btn btn-primary shadow-sm">
                <i class="fa-solid fa-plus"></i> Thêm mới
            </a>
        </div>

        <div class="card-table">
            <table class="table table-hover align-middle">
                <thead>
                    <tr>
                        <th class="text-center" width="80">ID</th>
                        <th>Tên danh mục</th>
                        <th>Icon Class</th>
                        <th class="text-end" width="150">Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="c" items="${listcate}">
                        <tr>
                            <td class="text-center fw-bold text-secondary">#${c.cate_id}</td>
                            <td>
                                <span class="fw-bold text-dark">${c.cate_name}</span>
                            </td>
                            <td>
                                <i class="${c.icons} text-primary me-2"></i> <span class="text-muted small">${c.icons}</span>
                            </td>
                            <td class="text-end">
                                <a href="${pageContext.request.contextPath}/admin/categories/edit?id=${c.cate_id}" 
                                   class="btn-action btn-edit" title="Sửa">
                                   <i class="fa-solid fa-pen"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/admin/categories/delete?id=${c.cate_id}" 
                                   class="btn-action btn-delete" 
                                   onclick="return confirm('Bạn có chắc muốn xóa danh mục: ${c.cate_name}?');" title="Xóa">
                                   <i class="fa-solid fa-trash"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    
                    <c:if test="${empty listcate}">
                        <tr>
                            <td colspan="4" class="text-center py-4 text-muted">
                                <img src="https://cdn-icons-png.flaticon.com/512/4076/4076432.png" width="60" class="mb-3 opacity-50"><br>
                                Chưa có dữ liệu danh mục nào.
                            </td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>