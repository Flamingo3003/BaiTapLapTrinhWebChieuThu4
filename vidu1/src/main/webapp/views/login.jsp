<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng Nhập</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ABE2, #5563DE);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
        }
        .container {
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            padding: 40px;
            width: 360px;
            animation: fadeIn 0.8s ease;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            font-weight: 600;
        }
        .alert-danger {
            background-color: #ffebee;
            color: #c62828;
            padding: 10px;
            border-radius: 8px;
            text-align: center;
            font-size: 14px;
            margin-bottom: 20px;
            border: 1px solid #ffcdd2;
        }
        .input-group {
            position: relative;
            margin-bottom: 20px;
        }
        .input-group i {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #888;
        }
        .input-group input {
            width: 100%;
            padding: 12px 15px 12px 45px; /* Để chừa chỗ cho icon */
            border: 1px solid #ddd;
            border-radius: 30px; /* Bo tròn input */
            box-sizing: border-box;
            font-size: 15px;
            transition: all 0.3s;
            background: #f9f9f9;
        }
        .input-group input:focus {
            border-color: #5563DE;
            background: #fff;
            outline: none;
            box-shadow: 0 0 8px rgba(85, 99, 222, 0.2);
        }
        .options {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 14px;
            margin-bottom: 25px;
        }
        .options label {
            cursor: pointer;
            color: #555;
        }
        .options a {
            color: #5563DE;
            text-decoration: none;
            font-weight: 600;
        }
        button {
            width: 100%;
            padding: 12px;
            background: linear-gradient(to right, #5563DE, #74ABE2);
            color: white;
            border: none;
            border-radius: 30px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: transform 0.2s, box-shadow 0.2s;
        }
        button:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(85, 99, 222, 0.4);
        }
        .footer-text {
            text-align: center;
            margin-top: 25px;
            font-size: 14px;
            color: #666;
        }
        .footer-text a {
            color: #5563DE;
            text-decoration: none;
            font-weight: bold;
        }
        .footer-text a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>👋 Đăng Nhập</h2>

        <c:if test="${not empty requestScope.alert}">
            <div class="alert-danger">
                <i class="fa-solid fa-circle-exclamation"></i> ${requestScope.alert}
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

            <div class="options">
                <div>
                    <input type="checkbox" id="remember" name="remember">
                    <label for="remember">Nhớ tôi</label>
                </div>
                <a href="${pageContext.request.contextPath}/forgot-password">Quên mật khẩu?</a>
            </div>

            <button type="submit">ĐĂNG NHẬP</button>
        </form>

        <p class="footer-text">
            Bạn chưa có tài khoản? <a href="${pageContext.request.contextPath}/register">Đăng ký ngay</a>
        </p>
    </div>

</body>
</html>