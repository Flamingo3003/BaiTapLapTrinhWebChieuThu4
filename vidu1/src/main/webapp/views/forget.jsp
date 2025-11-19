<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Trang Chủ - Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7f6;
        }
        /* Navbar */
        .navbar {
            background: linear-gradient(to right, #5563DE, #74ABE2);
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        .logo { font-size: 24px; font-weight: bold; }
        .logo i { margin-right: 10px; }
        
        .user-info { display: flex; align-items: center; gap: 15px; }
        .logout-btn {
            background-color: rgba(255, 255, 255, 0.2);
            color: white;
            text-decoration: none;
            padding: 8px 15px;
            border-radius: 20px;
            transition: 0.3s;
            font-size: 14px;
        }
        .logout-btn:hover { background-color: rgba(255, 255, 255, 0.4); }

        /* Content */
        .main-content {
            padding: 50px;
            text-align: center;
        }
        .welcome-card {
            background: white;
            max-width: 600px;
            margin: 0 auto;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.05);
        }
        .welcome-card h1 { color: #333; margin-bottom: 10px; }
        .welcome-card p { color: #666; line-height: 1.6; }
        
        .action-buttons { margin-top: 30px; }
        .btn {
            display: inline-block;
            padding: 10px 25px;
            margin: 0 5px;
            border-radius: 5px;
            text-decoration: none;
            color: white;
            background-color: #5563DE;
            transition: 0.2s;
        }
        .btn:hover { background-color: #3c4bc5; }
        .btn-outline {
            background-color: transparent;
            border: 1px solid #5563DE;
            color: #5563DE;
        }
        .btn-outline:hover { background-color: #5563DE; color: white; }
    </style>
</head>
<body>

    <div class="navbar">
        <div class="logo">
            <i class="fa-solid fa-layer-group"></i> MySystem
        </div>
        <div class="user-info">
            <span>Xin chào, <strong>${sessionScope.username != null ? sessionScope.username : 'Khách'}</strong></span>
            <a href="${pageContext.request.contextPath}/logout" class="logout-btn">
                <i class="fa-solid fa-right-from-bracket"></i> Đăng xuất
            </a>
        </div>
    </div>

    <div class="main-content">
        <div class="welcome-card">
            <h1>🎉 Chào mừng trở lại!</h1>
            <p>Bạn đã đăng nhập thành công vào hệ thống.</p>
            <p>Đây là trang chủ. Bạn có thể bắt đầu xây dựng các tính năng quản lý tại đây.</p>
            
            <div class="action-buttons">
                <a href="#" class="btn">Vào trang quản trị</a>
                <a href="#" class="btn btn-outline">Cập nhật hồ sơ</a>
            </div>
        </div>
    </div>

</body>
</html>