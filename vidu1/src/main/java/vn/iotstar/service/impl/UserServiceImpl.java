package vn.iotstar.service.impl;

import vn.iotstar.dao.IUserDao;
import vn.iotstar.dao.impl.UserDaoImpl;
import vn.iotstar.models.UserModel;
import vn.iotstar.service.IUserService;

public class UserServiceImpl implements IUserService{
	 
	IUserDao userDao = new UserDaoImpl();
    
	@Override
	public UserModel login(String username, String password) {
		UserModel user = this.get(username);
		 if (user != null && password.equals(user.getPassword())) {
		 return user;
	}
		 return null;
	}


	@Override
	public UserModel get(String username) {
		return userDao.get(username);
		
	}


	@Override
	public UserModel FindByUserName(String username) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void insert(UserModel user) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public UserModel findByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public boolean register(String username, String password, String email, String fullname, String phone) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean checkExistEmail(String email) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean checkExistUsername(String username) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean checkExistPhone(String phone) {
		// TODO Auto-generated method stub
		return false;
	}

}
