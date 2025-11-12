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

}
