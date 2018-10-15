package com.wangwang.test.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wangwang.test.entry.User;
import com.wangwang.test.service.UserService;
@RequestMapping("/userInfo")
@Controller
public class UserAction {

	@Autowired
	private UserService aaa;
	private User user;
	private List<User> userList;

	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView modelAndView = new ModelAndView("user_info");
		modelAndView.addObject("para", "这是一个需传递的参数");
		return modelAndView;
	}
	
	@RequestMapping("/login1")
	public String login1() {
		return "user_info";
	}

	@RequestMapping("/update")
	public String updateUI() {
		user = aaa.findUserById(user.getId());
		return "updateUser";
	}

	@RequestMapping("/add")
	public String add() {
		aaa.addUser(user);
		return "success";
	}

	@RequestMapping("/delete")
	public String delete() {
		aaa.deleteUser(user.getId());
		return "success";
	}

	@RequestMapping("/update1")
	public String update() {
		aaa.updateUser(user);
		return "success";
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String queryAllUser() {
		userList = aaa.findAllUser();
		return "userList";
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

}
