package vn.iotstar.dao;

import java.util.List;

import vn.iotstar.models.UserModel;

public interface IUserDao {

	List<UserModel> findAll();
	
	UserModel findByID(int id);
	
	void insert(UserModel user);
	
	UserModel get(String username);
	
	UserModel findByUserName(String username);
	
	UserModel findByEmail(String email);
	
	boolean checkExistEmail(String email);
	    
	boolean checkExistUsername(String username);
	    
	boolean checkExistPhone(String phone);
	
}
