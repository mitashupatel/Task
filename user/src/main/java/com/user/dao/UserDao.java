package com.user.dao;

import java.util.List;
import com.user.model.User;

public interface UserDao {
	public List<User> getAll();
	
	public long saveUser(User user);
	
	public User logincheck(User user);
	
}
