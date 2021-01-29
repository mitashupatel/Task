package com.user.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.user.dao.UserDao;
import com.user.model.User;
import com.user.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao userDao;
	
	public List<User> getAll() {
		// TODO Auto-generated method stub
		return userDao.getAll();
	}

	public long saveUser(User user) {
		// TODO Auto-generated method stub
		return userDao.saveUser(user);
	}
	public User login(User user) {
		String email =user.getEmail();
		String password = user.getPassword();
		user.setPassword(password);
		user.setEmail(email);
		return userDao.logincheck(user);
	
	}
}
