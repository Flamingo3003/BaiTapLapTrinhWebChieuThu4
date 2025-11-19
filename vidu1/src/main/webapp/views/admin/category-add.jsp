<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm danh mục mới</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <style>
        body { background-color: #f0f2f5; display: flex; justify-content: center; align-items: center; min-height: 100vh; font-family: 'Segoe UI', sans-serif; }
        .form-card {
            background: white; padding: 40px; border-radius: 15px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); width: 100%; max-width: 500px;
        }
        .form-label { font-weight: 600; color: #555; }
        .form-control:focus { box-shadow: 0 0 0 0.25rem rgba(85, 99, 222, 0.25); border-color: #5563DE; }
        .btn-primary { background-color: #5563DE; border-color: #5563DE; padding: 10px 25px; }
        .btn-primary:hover { background-color: #3c4bc5; }
        .header-title { text-align: center; margin-bottom: 30px; color: #333; }
    </style>
</head>
<body>

    <div class="form-card">
        <h3 class="header-title">➕ Thêm Danh Mục</h3>
        
        <form action="${pageContext.request.contextPath}/admin/categories/add" method="post">
            
            <div class="mb-4">
                <label class="form-label">Tên danh mục</label>
                <div class="input-group">
                    <span class="input-group-text bg-light"><i class="fa-solid fa-tag"></i></span>
                    <input type="text" class="form-control" name="cate_name" placeholder="Ví dụ: Điện thoại, Laptop..." required>
                </div>
            </div>

            <div class="mb-4">
                <label class="form-label">Icon (Class FontAwesome)</label>
                <div class="input-group">
                    <span class="input-group-text bg-light"><i class="fa-solid fa-icons"></i></span>
                    <input type="text" class="form-control" name="icons" placeholder="Ví dụ: fa-solid fa-mobile">
                </div>
                <div class="form-text">Tìm icon tại trang FontAwesome và dán class vào đây.</div>
            </div>

            <div class="d-flex justify-content-between mt-5">
                <a href="${pageContext.request.contextPath}/admin/categories" class="btn btn-outline-secondary">
                    <i class="fa-solid fa-arrow-left"></i> Quay lại
                </a>
                <button type="submit" class="btn btn-primary">
                    <i class="fa-solid fa-save"></i> Lưu danh mục
                </button>
            </div>
        </form>
    </div>

</body>
</html>