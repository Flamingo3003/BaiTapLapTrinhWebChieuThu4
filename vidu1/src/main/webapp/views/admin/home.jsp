<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    
    <style>
        body { background-color: #f0f2f5; font-family: 'Segoe UI', sans-serif; }
        
        /* Sidebar Styling */
        .sidebar {
            height: 100vh; width: 260px; position: fixed; top: 0; left: 0;
            background: linear-gradient(180deg, #5563DE 0%, #74ABE2 100%);
            color: white; padding-top: 20px; box-shadow: 2px 0 10px rgba(0,0,0,0.1);
            z-index: 1000;
        }
        .sidebar-header { text-align: center; margin-bottom: 30px; padding: 0 15px; }
        .sidebar-header h3 { font-weight: 700; font-size: 22px; }
        .nav-link { color: rgba(255,255,255,0.8); padding: 12px 25px; font-size: 16px; display: flex; align-items: center; transition: 0.3s; text-decoration: none; }
        .nav-link i { width: 30px; font-size: 18px; }
        .nav-link:hover, .nav-link.active { background-color: rgba(255,255,255,0.2); color: white; border-left: 4px solid #fff; }
        
        /* Main Content */
        .main-content { margin-left: 260px; padding: 30px; }
        
        /* Dashboard Cards */
        .stat-card { background: white; border-radius: 12px; padding: 25px; box-shadow: 0 4px 15px rgba(0,0,0,0.05); display: flex; align-items: center; transition: transform 0.3s; }
        .stat-card:hover { transform: translateY(-5px); }
        .stat-icon { width: 60px; height: 60px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 24px; margin-right: 20px; }
        .bg-purple-light { background-color: #e8eaf6; color: #5563DE; }
        .bg-blue-light { background-color: #e3f2fd; color: #1e88e5; }
        .bg-green-light { background-color: #e8f5e9; color: #43a047; }
    </style>
</head>
<body>

    <div class="sidebar">
        <div class="sidebar-header">
            <h3><i class="fa-brands fa-uniregistry"></i> MyAdmin</h3>
        </div>
        <nav>
            <a href="${pageContext.request.contextPath}/admin/home" class="nav-link active">
                <i class="fa-solid fa-house"></i> Tổng quan
            </a>
            <a href="${pageContext.request.contextPath}/admin/categories" class="nav-link">
                <i class="fa-solid fa-layer-group"></i> Quản lý danh mục
            </a>
            <a href="#" class="nav-link">
                <i class="fa-solid fa-users"></i> Quản lý người dùng
            </a>
            <a href="#" class="nav-link">
                <i class="fa-solid fa-box-open"></i> Quản lý sản phẩm
            </a>
            <div style="margin-top: 50px; border-top: 1px solid rgba(255,255,255,0.2);"></div>
            <a href="${pageContext.request.contextPath}/logout" class="nav-link">
                <i class="fa-solid fa-right-from-bracket"></i> Đăng xuất
            </a>
        </nav>
    </div>

    <div class="main-content">
        <h2 class="mb-4">Xin chào, ${username}! 👋</h2>
        
        <div class="row g-4">
            <div class="col-md-4">
                <div class="stat-card">
                    <div class="stat-icon bg-purple-light"><i class="fa-solid fa-layer-group"></i></div>
                    <div>
                        <h5 class="text-muted mb-1">Tổng danh mục</h5>
                        <h3>12</h3>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4">
                <div class="stat-card">
                    <div class="stat-icon bg-blue-light"><i class="fa-solid fa-box"></i></div>
                    <div>
                        <h5 class="text-muted mb-1">Tổng sản phẩm</h5>
                        <h3>150</h3>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="stat-card">
                    <div class="stat-icon bg-green-light"><i class="fa-solid fa-users"></i></div>
                    <div>
                        <h5 class="text-muted mb-1">Người dùng</h5>
                        <h3>85</h3>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="mt-5">
            <div class="alert alert-info">
                <i class="fa-solid fa-circle-info"></i> Chọn chức năng từ menu bên trái để bắt đầu quản lý hệ thống.
            </div>
        </div>
    </div>

</body>
</html>