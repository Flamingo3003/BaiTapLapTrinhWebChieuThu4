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
									rs.getString("password"))); // Add vào list
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
	public void insert(UserModel user) {

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
}

