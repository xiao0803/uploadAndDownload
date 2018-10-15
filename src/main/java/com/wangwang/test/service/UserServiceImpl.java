package com.wangwang.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangwang.test.dao.UserDao;
import com.wangwang.test.entry.User;

@Service("ddd")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	String dddString = "ddd";

	// 添加用户
	public void addUser(User user) {
		userDao.insertUser(user);
	}

	// 更新用户
	public void updateUser(User user) {
		userDao.updateUser(user);
	}

	public void deleteUser(Integer userId) {
		userDao.deleteUser(userId);
	}

	public User findUserById(Integer userId) {
		return userDao.findUserByid(userId);
	}

	public List<User> findAllUser() {
		return userDao.findAll();
	}

	public User login(User user) {
		return userDao.userLogin(user);
	}
}