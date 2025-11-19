package vn.iotstar.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import vn.iotstar.config.DBMySQLConnect;
import vn.iotstar.dao.IUserDao;
import vn.iotstar.models.UserModel;

public class UserDaoImpl extends DBMySQLConnect implements IUserDao {
	
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null; 
	
	
	@Override
	public List<UserModel> findAll() {

		String sql = "select * from users";

		List<UserModel> list = new ArrayList<>(); // Tạo 1 list để truyền dữ liệu

		try {
			conn = super.getDatabaseConnection(); // Kết nối database
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) { // Next từng DÒNG cuối tới cuối bảng
				list.add(
						new UserModel(
									rs.getInt("id"), 
									rs.getString("username"), 
									rs.getString("email"), 
									rs.getString("fullname"), 
									rs.getString("images"),
									rs.getString("password"),
									rs.getString("phone"),
									rs.getInt("roleid"),
									rs.getDate("createDate"))); // Add vào list
			}
			return list;

		} catch (Exception e) {
			
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public UserModel findByID(int id) {

		return null;
	}

	
	

	@Override
	public UserModel get(String username) {
		 String sql = "SELECT * FROM users WHERE username = ? ";
		 try {
		 
		 conn = new DBMySQLConnect().getDatabaseConnection();
		 ps = conn.prepareStatement(sql);
		 ps.setString(1, username);
		 rs = ps.executeQuery();
		 while (rs.next()) {
		 UserModel user = new UserModel();
		 user.setId(rs.getInt("id"));
		 user.setUsername(rs.getString("username"));
		 user.setEmail(rs.getString("email"));
		 user.setFullname(rs.getString("fullname"));
		 user.setImages(rs.getString("images"));
		 user.setPassword(rs.getString("password"));
		
		 return user;}
		 } catch (Exception e) {e.printStackTrace();}
		return null;
		
	}
	
	public static void main(String[] args) {
	    UserDaoImpl userDao = new UserDaoImpl();
	    List<UserModel> list = userDao.findAll();

	    for (UserModel user : list) {
	        System.out.println(user);
	    }
	}

	
	@Override
    public void insert(UserModel user) {
        String sql = "INSERT INTO users(username, email, password, images, fullname, phone, roleid, createDate) "
                   + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            conn = super.getDatabaseConnection();
            ps = conn.prepareStatement(sql);

            ps.setString(1, user.getUsername());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getImages());
            ps.setString(5, user.getFullname());
            ps.setString(6, user.getPhone());
            ps.setInt(7, user.getRoleid());
            ps.setDate(8, user.getCreateDate());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try { if (ps != null) ps.close(); } catch (Exception e) {}
            try { if (conn != null) conn.close(); } catch (Exception e) {}
        }
    }
	 @Override
	    public UserModel findByUserName(String username) {
	        String sql = "SELECT * FROM users WHERE username = ?";
	        try {
	            conn = super.getDatabaseConnection();
	            ps = conn.prepareStatement(sql);
	            ps.setString(1, username);
	            rs = ps.executeQuery();

	            if (rs.next()) {
	                return new UserModel(
	                    rs.getInt("id"),
	                    rs.getString("username"),
	                    rs.getString("password"),
	                    rs.getString("images"),
	                    rs.getString("fullname"),
	                    rs.getString("email"),
	                    rs.getString("phone"),
	                    rs.getInt("roleid"),
	                    rs.getDate("createDate")
	                );
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            try { if (rs != null) rs.close(); } catch (Exception e) {}
	            try { if (ps != null) ps.close(); } catch (Exception e) {}
	            try { if (conn != null) conn.close(); } catch (Exception e) {}
	        }

	        return null;
	    }

	@Override
    public UserModel findByEmail(String email) {
        String sql = "SELECT * FROM users WHERE email = ?";
        try {
            conn = super.getDatabaseConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            rs = ps.executeQuery();

            if (rs.next()) {
                return new UserModel(
                    rs.getInt("id"),
                    rs.getString("username"),
                    rs.getString("password"),
                    rs.getString("images"),
                    rs.getString("fullname"),
                    rs.getString("email"),
                    rs.getString("phone"),
                    rs.getInt("roleid"),
                    rs.getDate("createDate")
                );
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try { if (rs != null) rs.close(); } catch (Exception e) {}
            try { if (ps != null) ps.close(); } catch (Exception e) {}
            try { if (conn != null) conn.close(); } catch (Exception e) {}
        }
        return null;
    }

	@Override
    public boolean checkExistEmail(String email) {
        String sql = "SELECT * FROM users WHERE email=?";
        try {
            conn = super.getDatabaseConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            rs = ps.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

	@Override
    public boolean checkExistUsername(String username) {
        String sql = "SELECT * FROM users WHERE username=?";
        try {
            conn = super.getDatabaseConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

	@Override
    public boolean checkExistPhone(String phone) {
        String sql = "SELECT * FROM users WHERE phone=?";
        try {
            conn = super.getDatabaseConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, phone);
            rs = ps.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

