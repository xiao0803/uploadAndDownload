package com.wangwang.test.dao;

import java.util.List;
import com.wangwang.test.common.MyBatisRepository;
import com.wangwang.test.entry.User;

@MyBatisRepository
public interface UserDao {

	public abstract void insertUser(User user);

	public abstract void updateUser(User user);

	public abstract void deleteUser(Integer userId);

	public abstract User findUserByid(Integer userId);

	public abstract List<User> findAll();

	public abstract User userLogin(User user);

}