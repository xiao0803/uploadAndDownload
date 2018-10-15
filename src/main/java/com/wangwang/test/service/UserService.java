package com.wangwang.test.service;

import java.util.List;

import com.wangwang.test.entry.User;

public interface UserService {

	// ÃÌº””√ªß
	public abstract void addUser(User user);

	public abstract void updateUser(User user);

	public abstract void deleteUser(Integer userId);

	public abstract User findUserById(Integer userId);

	public abstract List<User> findAllUser();

	public abstract User login(User user);

}