package com.user.app.dao;

import java.util.List;

import com.user.app.model.User;

public interface UserDAO {

	public void addUser(User User);

	public List<User> getAllUsers();

	public void deleteUser(Integer UserId);

	public User updateUser(User User);

	public User getUser(int Userid);
}
