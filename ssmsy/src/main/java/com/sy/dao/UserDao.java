package com.sy.dao;

import java.util.List;

import com.sy.domain.User;

public interface UserDao {
	public void addUser(User user);
	public List<User> selUser();
}
