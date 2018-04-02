package com.user.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.user.app.dao.UserDAO;
import com.user.app.model.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Override
	@Transactional
	public void addUser(User user) {
		userDAO.addUser(user);
	}

	@Override
	@Transactional
	public List<User> getAllUsers() {
		return userDAO.getAllUsers();
	}

	@Override
	@Transactional
	public void deleteUser(Integer userId) {
		userDAO.deleteUser(userId);
	}

	public User getUser(int userid) {
		return userDAO.getUser(userid);
	}

	public User updateUser(User User) {
		// TODO Auto-generated method stub
		return userDAO.updateUser(User);
	}

	public void setUserDAO(UserDAO UserDAO) {
		this.userDAO = UserDAO;
	}

}
