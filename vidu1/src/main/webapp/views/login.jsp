<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng Nhập Vào Hệ Thống</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .login-box {
            background-color: #fff;
            padding: 40px;
            border-radius: 6px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 360px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            font-weight: 500;
        }
        
        /* CSS cho thông báo lỗi */
        .alert-danger {
            background-color: #f8d7da;
            color: #721c24;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #f5c6cb;
            border-radius: 4px;
            text-align: center;
            font-size: 15px;
        }

        .input-group {
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 8px 10px;
            /* Màu nền xanh nhạt giống trong hình */
            background-color: #f0f7ff; 
        }

        .input-group i {
            color: #888;
            margin-right: 10px;
            font-size: 18px;
        }

        .input-group input {
            border: none;
            outline: none;
            padding: 5px 0;
            width: 100%;
            background-color: transparent;
            font-size: 16px;
        }

        .options-group {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
            font-size: 14px;
        }

        .options-group label {
            color: #555;
            cursor: pointer;
        }

        .options-group a {
            color: #007bff;
            text-decoration: none;
        }

        .btn-login {
            width: 100%;
            padding: 12px;
            /* Màu xanh dương giống trong hình */
            background-color: #007bff; 
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .btn-login:hover {
            background-color: #0056b3;
        }

        .register-link {
            text-align: center;
            margin-top: 35px;
            font-size: 15px;
            color: #777;
        }

        .register-link a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>Đăng Nhập Vào Hệ Thống</h2>

        <c:if test="${not empty requestScope.alert}">
            <div class="alert-danger">
                ${requestScope.alert}
            </div>
        </c:if>

        <form action="${pageContext.request.contextPath}/login" method="POST">
            
            <div class="input-group">
                <i class="fa-solid fa-user"></i>
                <input type="text" name="username" placeholder="Tên đăng nhập" required>
            </div>

            <div class="input-group">
                <i class="fa-solid fa-lock"></i>
                <input type="password" name="password" placeholder="Mật khẩu" required>
            </div>

            <div class="options-group">
                <div>
                    <input type="checkbox" id="remember" name="remember">
                    <label for="remember">Nhớ tôi</label>
                </div>
                <a href="/forgot-password">Quên mật khẩu?</a>
            </div>

            <button type="submit" class="btn-login">Đăng nhập</button>
        </form>

        <p class="register-link">
            Nếu bạn chưa có tài khoản trên hệ thống, thì hãy <a href="/register">Đăng ký</a>
        </p>
    </div>
</body>
</html>