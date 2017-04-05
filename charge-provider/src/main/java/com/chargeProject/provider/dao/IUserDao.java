package com.chargeProject.provider.dao;

import com.chargeProject.interfaces.vo.User;

import java.util.List;

public interface IUserDao {
	public void insert(User user);

	public User getUserById(Integer id);

	public List<User> getUsers();

	public void deleteById(Integer id);

	public void update(User user);
}
