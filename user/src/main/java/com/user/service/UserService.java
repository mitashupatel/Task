package com.user.service;

import java.util.List;

import com.user.model.User;

public interface UserService {
	public List<User> getAll();

	public long saveUser(User user);

	public User login(User user);
}
